# 📝 Markdown Studio

Ein schlanker Markdown-Editor mit Live-Vorschau, der komplett im Browser läuft — keine Installation, kein Build, keine Serverseite. Die gesamte App steckt in einer einzigen HTML-Datei.

**🔗 Direkt ausprobieren:** [majort0m0.github.io/Markdown-Editor](https://majort0m0.github.io/Markdown-Editor/)
**📖 Ausführliche Anleitung:** [Anleitung.md](./Anleitung.md) — Schritt-für-Schritt-Beschreibungen aller Funktionen (auch in der App selbst über das ⌨️-Symbol verlinkt)

![Screenshot des Markdown Studio Editors mit mehreren Tabs, Formatierungsleiste und Live-Vorschau](./docs/screenshot.png)

## ✨ Funktionen

### Dokumente & Dateiformate
- **Mehrere Tabs** — beliebig viele Dokumente gleichzeitig offen, mit Autospeicherung im Browser (Text/Metadaten in LocalStorage, größere Anhänge wie Bilder/PDFs in IndexedDB für deutlich mehr Speicherplatz); ein Prozentbalken in der Fußleiste zeigt den belegten Speicherplatz sowie die Größe aller aktuell geöffneten Notizen zusammen an
- **Markdown, CSV, JSON, HTML und TXT** in derselben App: CSV und JSON werden als Tabelle bzw. hübsch formatiert mit Syntax-Hervorhebung angezeigt; HTML-Dateien bekommen eine echte Syntax-Hervorhebung im Editor **und** eine echte gerenderte Web-Vorschau (in einer abgeschotteten Sandbox, damit fremder HTML/JS-Code nichts im Editor selbst anrichten kann); TXT-Dateien werden unverändert als reiner Text angezeigt
- **Tabs umbenennen & Format wechseln** — Doppelklick auf einen Tab öffnet ein Umbenennen-Feld mit Format-Dropdown (Markdown/TXT/CSV/JSON/HTML), um ein Dokument gezielt in ein anderes Format zu konvertieren
- **14 Dokumentvorlagen** über den ✨-Button — u. a. Meeting-Notizen, README, Projektplan, Checkliste, Tagebuch, Rezept, Lebenslauf, Blogartikel, Brief, Präsentation, Fortbildungsplanung, Stundenplan und eine HTML-„Hello World“-Vorlage (mit CSS- und JS-Abschnitt)
- **Dateiname aus Überschrift** — ein unbenanntes Dokument übernimmt automatisch die erste Überschrift als Dateiname
- **Speichern** in eine lokale Datei (inkl. Speichern unter, mit direktem Dateizugriff sofern der Browser das unterstützt)

### Editor & Formatierung
- **Formatierungsleiste** — Überschriften (H1–H6), Fett/Kursiv/Durchgestrichen, Listen (Aufzählung/Nummeriert/Aufgaben), Einzug/Ausrücken, Zitat, Code, Code-Block, Trennlinie, Link, Bild, Tabelle — Buttons zeigen live an, welche Formatierung am Cursor aktiv ist
- **Tabellen-Werkzeuge** — Zeilen/Spalten einfügen, löschen, verschieben und nach einer Spalte sortieren, sobald der Cursor in einer Tabelle steht (funktioniert identisch für Markdown- und CSV-Tabellen)
- **Klick & Mehrfachauswahl in der Tabellen-Vorschau** — Klick auf eine Zelle (Markdown-Tabelle oder CSV) springt zur passenden Stelle im Quelltext; durch mehrere Zellen ziehen markiert eine Zeile, Spalte oder einen beliebigen Zellblock zum Kopieren als Tabelle in die Zwischenablage
- **Frei verschiebbarer Trenner** zwischen Editor und Vorschau — das Verhältnis lässt sich beliebig in beide Richtungen ziehen
- **Suchen & Ersetzen** mit Treffer-Zähler ("3 von 12") und `‹`/`›`-Navigation zwischen allen Fundstellen; die Ersetzen-Funktion lässt sich per Checkbox ein-/ausblenden
- **Formatierung aufräumen** — ein Klick normalisiert überflüssige Leerzeilen im Dokument (Inhalt in Codeblöcken bleibt unangetastet)
- **Rückgängig/Wiederherstellen**, optionale **Rechtschreibprüfung**

### Medien einfügen
- **Bilder einfügen** per Copy-Paste, Drag & Drop oder Datei-Dialog — mit Auswahl, ob das Bild verkleinert oder im Original eingefügt werden soll
- **📷 Kamera** — Foto direkt in der App aufnehmen (auf dem iPhone/iPad wahlweise Front- oder Rückkamera), optional zuschneiden, danach wie ein eingefügtes Bild weiterverarbeiten
- **Zeichnungen** — eingebauter Excalidraw-Editor (Button "🖌️ Zeichnung"), Skizzen bleiben jederzeit bearbeitbar: Klick auf die Zeichnung öffnet sie erneut zum Weiterzeichnen
- **📄 PDF als Arbeitsblatt öffnen** — eine PDF-Datei öffnen oder hineinziehen, eine oder mehrere Seiten auswählen (einzeln, alle, oder ein Seitenbereich wie „1-3,5"); jede gewählte Seite wird direkt in den Zeichen-Editor geladen und kann dort beschriftet werden. Landet automatisch in einer neuen, eigenen Notiz — bei mehreren Seiten alle untereinander, mit automatischem Weiterschalten zur nächsten Seite nach dem Speichern
- **🎙️ Sprachaufnahmen** — Audio direkt in das Dokument einbetten, in der Vorschau über einen Player abspielbar
- **🎬 Video einbetten** — YouTube- oder Vimeo-Link (oder eine direkte Videodatei-URL) einfügen, wird in der Vorschau automatisch als eingebetteter Player angezeigt

### Vorschau & Darstellung
- **Live-Vorschau** mit synchronisiertem Scrollen zwischen Quelltext und Vorschau
- **Inhaltsverzeichnis** — schwebender Button über der Vorschau, Klick auf eine Überschrift springt direkt dorthin
- **15 Designs** — GitHub Light/Dark, Solarized Paper, Academic Serif, Dracula, Gruvbox Dark, Sepia, High Contrast, Tokyo Night, Catppuccin Latte, PDF, Word, Journal, Clean, Bunt (inkl. farbiger Code-Hervorhebung); das Design wird pro Tab gemerkt und über WebDAV mitsynchronisiert, statt für die ganze App zu gelten
- **Fokus-Modi** — Editor oder Vorschau einzeln ausblenden, plus echter **Vollbildmodus** (mit Fallback für iOS Safari)
- **Präsentationsmodus** — Folien werden automatisch an Trennlinien (`---`) aufgeteilt und lassen sich per Tastatur, Klick oder Touch durchblättern, mit automatischer Zentrierung für reine Titel- bzw. Text-Folien
- **Simple Modus** — ein „Simple"-Schalter in der Kopfzeile reduziert Kopf- und Werkzeugleiste auf das Nötigste (Öffnen, Speichern, Rückgängig/Wiederherstellen, Quelltext/Vorschau als reiner Umschalter, Zoom, Vollbild sowie Überschrift/Bild/Foto/Zeichnung/Audio), stellt automatisch das Design „Clean" und eine größere Zoomstufe ein und springt beim Einfügen von Bild, Foto, Zeichnung oder Audioaufnahme direkt in die Vorschau — praktisch für Tablets, jüngere Nutzer:innen oder eine aufgeräumte Schreibumgebung. Bleibt geräteweit gespeichert und lässt sich auch per Link mit `?simple=true` direkt aktiviert öffnen

### Synchronisation & Export
- **WebDAV-Synchronisierung** zwischen mehreren Geräten — automatisch bei Änderungen, in Intervallen oder manuell, inkl. Konfliktbehandlung (lokale Version behalten, Server-Version übernehmen oder beide als getrennte Dokumente behalten); der Sync-Button färbt sich hellgrün bei erfolgreich bestehender Verbindung, mit einem dunkelgrünen Ring als Countdown bis zur nächsten automatischen Synchronisierung, und erfolgreich synchronisierte Tabs bekommen einen grünen Rand in der Tableiste
- **Export** als eigenständige HTML-Datei oder direkt **Drucken/als PDF speichern**
- **Formatierte Notiz in die Zwischenablage kopieren** (zum Einfügen in Word, Outlook, Gmail, …)

### Sonstiges
- **Responsiv** — Bedienleisten werden auf schmalen Bildschirmen (z. B. iPhone) horizontal scrollbar, Editor/Vorschau stapeln sich übereinander
- **Installierbar** — App-Icon und Web-Manifest, auf iOS über „Zum Home-Bildschirm“ startbar wie eine echte App
- **Tastenkürzel-Hilfe** über das ⌨️-Symbol in der Kopfzeile
- **URL-Parameter für Direktlinks** — `?view=source`/`?view=preview`/`?view=split` legt die Startansicht unabhängig von zuvor gespeicherten Einstellungen fest; `?url=<Adresse-einer-.md-Datei>` öffnet automatisch ein Dokument von einer beliebigen (CORS-freigegebenen) Web-Adresse, ohne beim erneuten Öffnen desselben Links doppelt zu importieren; `?localstorage=false` startet die App bewusst ohne die gespeicherten Notizen zu laden (z. B. für Vorführungen oder einen Kiosk-Link) — zusammen mit `?url=` wird dann ausschließlich die dort angegebene Notiz geöffnet. Alle Parameter lassen sich auch mit `?simple=true` kombinieren. Details in der [Anleitung](./Anleitung.md#18-direktlinks-mit-url-parametern)

## 🚀 Verwenden

**Im Browser:** Einfach den [Live-Link](https://majort0m0.github.io/Markdown-Editor/) öffnen.

**Lokal:** `Markdown-Editor.html` herunterladen und im Browser öffnen (Doppelklick genügt) — funktioniert auch offline, da alle Bibliotheken (inklusive des eingebauten Zeichen-Editors und der PDF-Verarbeitung) bereits in der Datei enthalten sind. Dadurch ist die Datei mit ca. 13 MB spürbar größer als ein gewöhnlicher Markdown-Editor, lässt sich aber weiterhin als einzelne Datei weitergeben.

## 🛠️ Entwicklung

Die komplette App (HTML, CSS, JavaScript) liegt in `Markdown-Editor.html`. Es gibt keinen Build-Schritt, keine Abhängigkeiten zum Installieren — nach jeder Änderung einfach die Datei im Browser neu laden. Details zur internen Architektur stehen in [`CLAUDE.md`](./CLAUDE.md).

## 📄 Lizenz

CC-BY-NC — [Lernsachen.blog](https://lernsachen.blog)
