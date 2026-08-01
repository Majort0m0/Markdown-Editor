import Cocoa
import WebKit

class AppDelegate: NSObject, NSApplicationDelegate, WKUIDelegate {
    var window: NSWindow!
    var webView: WKWebView!

    func applicationDidFinishLaunching(_ notification: Notification) {
        let screenFrame = NSScreen.main?.visibleFrame ?? NSRect(x: 0, y: 0, width: 1400, height: 900)
        let width = min(1400, screenFrame.width * 0.9)
        let height = min(900, screenFrame.height * 0.9)
        let rect = NSRect(x: 0, y: 0, width: width, height: height)

        window = NSWindow(contentRect: rect,
                           styleMask: [.titled, .closable, .miniaturizable, .resizable],
                           backing: .buffered, defer: false)
        window.center()
        window.title = "Markdown Studio"
        window.minSize = NSSize(width: 760, height: 520)
        window.collectionBehavior.insert(.fullScreenPrimary)

        let config = WKWebViewConfiguration()
        webView = WKWebView(frame: rect, configuration: config)
        webView.uiDelegate = self
        // Required for "Speichern"/"Speichern unter"/"Als HTML exportieren": the web app has no
        // File System Access API in WebKit, so all three always fall back to a synthetic
        // <a download> pointing at a blob: URL — see the WKNavigationDelegate/WKDownloadDelegate
        // extension below for what actually turns that into a real Save panel. WKDownload and the
        // navigationAction/navigationResponse "didBecome download" APIs only exist from macOS
        // 11.3 — this app's declared minimum (Info.plist LSMinimumSystemVersion 12.0) already
        // satisfies that, so this check is really just a compile-time formality.
        if #available(macOS 11.3, *) {
            webView.navigationDelegate = self
        }
        webView.autoresizingMask = [.width, .height]

        window.contentView = webView
        window.makeKeyAndOrderFront(nil)

        if let htmlURL = Bundle.main.url(forResource: "Markdown-Editor", withExtension: "html") {
            webView.loadFileURL(htmlURL, allowingReadAccessTo: htmlURL.deletingLastPathComponent())
        }

        NSApp.activate(ignoringOtherApps: true)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

    // Links with target="_blank" (e.g. rendered markdown links) would otherwise silently do
    // nothing inside a plain WKWebView, since there's no second window to open them into — hand
    // them off to the user's actual default browser instead.
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration,
                 for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if let url = navigationAction.request.url {
            NSWorkspace.shared.open(url)
        }
        return nil
    }

    // Camera capture / audio recording (getUserMedia) are silently denied by default outside a
    // real browser unless a WKUIDelegate explicitly grants them — this app's 📷/🎙️ toolbar
    // features rely on both.
    @available(macOS 12.0, *)
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin,
                 initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType,
                 decisionHandler: @escaping (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }

    // "Öffnen" (native <label for="fileInput">/<input type="file">): unlike a plain <a> click,
    // which WebKit already knows how to navigate, WKWebView has no built-in file picker of its
    // own — without this delegate method, clicking the input does nothing at all, no NSOpenPanel
    // ever appears. Unrelated to loadFileURL's allowingReadAccessTo sandbox above: a file picked
    // here reaches the page as a File/Blob through this delegate's own completion handler, not
    // through the page's navigation/fetch sandbox, so the user can pick from anywhere on disk.
    func webView(_ webView: WKWebView, runOpenPanelWith parameters: WKOpenPanelParameters,
                 initiatedByFrame frame: WKFrameInfo,
                 completionHandler: @escaping ([URL]?) -> Void) {
        let panel = NSOpenPanel()
        panel.canChooseFiles = true
        panel.canChooseDirectories = parameters.allowsDirectories
        panel.allowsMultipleSelection = parameters.allowsMultipleSelection
        panel.beginSheetModal(for: window) { response in
            completionHandler(response == .OK ? panel.urls : nil)
        }
    }
}

// MARK: - Downloads (Speichern / Speichern unter / Als HTML exportieren)
//
// The web app has no native Save integration of its own — those three buttons all funnel through
// the same browser-standard fallback (showSaveFilePicker doesn't exist in WebKit on any OS, so
// this isn't a rare edge case, it's the only path that ever runs here): a synthetic <a download>
// pointing at a blob: URL. A plain, undelegated WKWebView does nothing when that's clicked — there
// is no default Save panel — so this has to be handled explicitly.
//
// Kept as its own extension (rather than folding into the WKUIDelegate class body above) so the
// @available(macOS 11.3, *) gate — required because WKDownload and the shouldPerformDownload/
// .download navigation-policy APIs only exist from 11.3 — applies to the whole conformance at
// once instead of annotating every method individually.
@available(macOS 11.3, *)
extension AppDelegate: WKNavigationDelegate, WKDownloadDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(navigationAction.shouldPerformDownload ? .download : .allow)
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse,
                 decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        decisionHandler(navigationResponse.canShowMIMEType ? .allow : .download)
    }

    func webView(_ webView: WKWebView, navigationAction: WKNavigationAction,
                 didBecome download: WKDownload) {
        download.delegate = self
    }

    func webView(_ webView: WKWebView, navigationResponse: WKNavigationResponse,
                 didBecome download: WKDownload) {
        download.delegate = self
    }

    // This is what turns a "Speichern"/"Speichern unter"/"Als HTML exportieren" click into a real
    // native Save panel — exactly the behavior the web app's own fallback already assumes exists
    // (a filename + blob content, handed to whatever the OS does with a download), regardless of
    // which of the three buttons triggered it.
    func download(_ download: WKDownload, decideDestinationUsing response: URLResponse,
                  suggestedFilename: String, completionHandler: @escaping (URL?) -> Void) {
        let panel = NSSavePanel()
        panel.nameFieldStringValue = suggestedFilename
        panel.isExtensionHidden = false
        panel.canCreateDirectories = true
        panel.beginSheetModal(for: window) { result in
            completionHandler(result == .OK ? panel.url : nil)
        }
    }

    func download(_ download: WKDownload, didFailWithError error: Error, resumeData: Data?) {
        // The user's own Cancel click in the NSSavePanel above surfaces here as a cancellation —
        // we already resolved completionHandler(nil) for that case, so don't also nag them with
        // an alert for cancelling their own save.
        let nsError = error as NSError
        guard nsError.code != NSURLErrorCancelled else { return }
        let alert = NSAlert()
        alert.messageText = "Speichern fehlgeschlagen"
        alert.informativeText = error.localizedDescription
        alert.alertStyle = .warning
        alert.runModal()
    }
}

func buildMainMenu() {
    let mainMenu = NSMenu()

    let appMenuItem = NSMenuItem()
    mainMenu.addItem(appMenuItem)
    let appMenu = NSMenu()
    appMenuItem.submenu = appMenu
    appMenu.addItem(withTitle: "Über Markdown Studio",
                     action: #selector(NSApplication.orderFrontStandardAboutPanel(_:)), keyEquivalent: "")
    appMenu.addItem(NSMenuItem.separator())
    appMenu.addItem(withTitle: "Markdown Studio beenden",
                     action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")

    let editMenuItem = NSMenuItem()
    mainMenu.addItem(editMenuItem)
    let editMenu = NSMenu(title: "Bearbeiten")
    editMenuItem.submenu = editMenu
    editMenu.addItem(withTitle: "Rückgängig", action: Selector(("undo:")), keyEquivalent: "z")
    editMenu.addItem(withTitle: "Wiederholen", action: Selector(("redo:")), keyEquivalent: "Z")
    editMenu.addItem(NSMenuItem.separator())
    editMenu.addItem(withTitle: "Ausschneiden", action: #selector(NSText.cut(_:)), keyEquivalent: "x")
    editMenu.addItem(withTitle: "Kopieren", action: #selector(NSText.copy(_:)), keyEquivalent: "c")
    editMenu.addItem(withTitle: "Einfügen", action: #selector(NSText.paste(_:)), keyEquivalent: "v")
    editMenu.addItem(withTitle: "Alles auswählen", action: #selector(NSText.selectAll(_:)), keyEquivalent: "a")

    let windowMenuItem = NSMenuItem()
    mainMenu.addItem(windowMenuItem)
    let windowMenu = NSMenu(title: "Fenster")
    windowMenuItem.submenu = windowMenu
    windowMenu.addItem(withTitle: "Minimieren", action: #selector(NSWindow.miniaturize(_:)), keyEquivalent: "m")
    windowMenu.addItem(withTitle: "Zoomen", action: #selector(NSWindow.zoom(_:)), keyEquivalent: "")
    NSApp.windowsMenu = windowMenu

    NSApp.mainMenu = mainMenu
}

let app = NSApplication.shared
app.setActivationPolicy(.regular)
buildMainMenu()
let delegate = AppDelegate()
app.delegate = delegate
app.run()
