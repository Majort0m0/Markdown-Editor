# 📝 Markdown Studio Pro

Ein Markdown-Editor, in dem du **direkt in der Vorschau schreibst** — Formatierung erscheint live beim Tippen, gespeichert wird trotzdem reines Markdown. Läuft komplett im Browser: keine Installation, kein Build, keine Serverseite. Die gesamte App steckt in einer einzigen HTML-Datei.

> **Neu in Version 2.0:** Die Vorschau ist jetzt selbst der Editor (WYSIWYG mit Live-Formatierung), dazu ein Slash-Menü, Block-Anfasser zum Umwandeln und Verschieben, drei Betriebsarten (Fokus/Simple/Voll) und eine aufgeräumte Oberfläche mit Burger-Menü und vertikaler Notizleiste. Der klassische Quelltext-Editor bleibt vollständig erhalten und ist jederzeit umschaltbar.

**🔗 Direkt ausprobieren:** [majort0m0.github.io/Markdown-Editor](https://majort0m0.github.io/Markdown-Editor/)
**📖 Ausführliche Anleitung:** [Anleitung.md](./Anleitung.md) — Schritt-für-Schritt-Beschreibungen aller Funktionen (auch in der App selbst über das Burger-Menü ☰ verlinkt)


## ✨ Funktionen

### Direkt bearbeitbare Vorschau (WYSIWYG)
- **Live-Formatierung beim Schreiben** — die Vorschau ist selbst das Eingabefeld: Überschriften, Fett/Kursiv, Listen und Zitate erscheinen sofort, während getippt wird. Die Delimiter (`**`, `` ` ``, …) bleiben nur solange sichtbar-gedimmt, wie der Cursor in der Formatierung steht, und verschwinden beim Verlassen — darunter bleibt immer normales Markdown, das sich unverändert speichern und weitergeben lässt
- **Markdown-Kürzel** wie im Quelltext — `# ` für Überschriften, `- `/`1. `/`- [ ] ` für Listen, `> ` für Zitate, `---` für eine Trennlinie: direkt in der Vorschau getippt, wandelt sich die Zeile sofort um. Auto-Paarung für `**`, `~~` und `` ` `` inklusive
- **Slash-Menü** — `/` tippen öffnet ein durchsuchbares Menü für Überschriften, Listen, Tabellen, Code-Block, Zitat, Trennlinie, Bild, Zeichnung und mehr
- **Block-Anfasser** — das Griffsymbol links neben jedem Absatz: Linksklick öffnet ein „Umwandeln in"-Menü (Absatz, Überschrift 1–6, Aufzählung, Nummeriert, Checkbox, Zitat, Code-Block), Ziehen sortiert Absätze und Listenpunkte um, Rechtsklick bietet Duplizieren, Löschen, Verschieben und „Zeile darüber/darunter einfügen"
- **Auswahl-Werkzeugleiste** — Text in der Vorschau markieren blendet eine kleine Leiste mit Fett/Kursiv/Durchgestrichen/Code, Überschriftenwahl und Textfarbe direkt an der Auswahl ein
- **Tabellen, Bilder, Zeichnungen und Audio bleiben an Ort und Stelle bearbeitbar** — Tabellenzellen direkt in der Vorschau beschreiben, Zeichnungen per Klick erneut öffnen, Einbettungen mit Enter einen neuen Absatz dahinter anlegen
- **Vertraute Tastenbelegung** — `Enter` erzeugt einen neuen Absatz (in Listen den nächsten Listenpunkt, auf einem leeren Punkt verlässt es die Liste), `Umschalt`+`Enter` einen bedingten Absatz innerhalb desselben Blocks; Rücktaste/Entf an den Absatzgrenzen verbinden Absätze wie im Quelltext. Auf iPhone/iPad greifen zusätzlich die Textwerkzeuge des Systems (Autokorrektur, Wortvorschläge, Doppel-Leerzeichen-Punkt)
- **Quelltext jederzeit** — über das Menü zwischen Vorschau, Quelltext und geteilter Ansicht wechseln; beide Ansichten bleiben zeichengenau synchron

### Dokumente & Dateiformate
- **Mehrere Tabs** — beliebig viele Dokumente gleichzeitig offen, mit Autospeicherung im Browser (Text/Metadaten in LocalStorage, größere Anhänge wie Bilder/PDFs in IndexedDB für deutlich mehr Speicherplatz); ein Prozentbalken in der Fußleiste zeigt den belegten Speicherplatz sowie die Größe aller aktuell geöffneten Notizen zusammen an
- **Markdown, CSV, JSON, HTML, TXT und ChordPro** in derselben App: CSV und JSON werden als Tabelle bzw. hübsch formatiert mit Syntax-Hervorhebung angezeigt; HTML-Dateien bekommen eine echte Syntax-Hervorhebung im Editor **und** eine echte gerenderte Web-Vorschau (in einer abgeschotteten Sandbox, damit fremder HTML/JS-Code nichts im Editor selbst anrichten kann); TXT-Dateien werden unverändert als reiner Text angezeigt; ChordPro-Liedblätter (`.pro`, `.chopro`, `.cho`, `.chordpro`, `.crd`) mit Akkorden über den Silben (siehe eigener Abschnitt unten)
- **Tabs umbenennen & Format wechseln** — Doppelklick auf einen Tab öffnet ein Umbenennen-Feld mit Format-Dropdown (Markdown/TXT/CSV/JSON/HTML), um ein Dokument gezielt in ein anderes Format zu konvertieren (bei Canvas-Dokumenten nur der Name, ohne Format-Wechsel, da eine Canvas-Fläche kein Text-basiertes Format ist)
- **Tab-Reihenfolge per Drag & Drop** ändern — einen Tab in der Tableiste an die gewünschte Stelle ziehen
- **18 Dokumentvorlagen** über „Neu" im Burger-Menü ☰ — u. a. Meeting-Notizen, README, Projektplan, Checkliste, Tagebuch, Rezept, Lebenslauf, Blogartikel, Brief, Präsentation, Fortbildungsplanung, Stundenplan, eine HTML-„Hello World“-Vorlage (mit CSS- und JS-Abschnitt), zwei Canvas-Flächen (Hoch- und Querformat) sowie ein leeres Liedblatt und „Greensleeves" als Schaustück aller ChordPro-Funktionen
- **Dateiname aus Überschrift** — ein unbenanntes Dokument übernimmt automatisch die erste Überschrift als Dateiname
- **Speichern** fragt immer nach einem Speicherort (funktioniert also immer wie „Speichern unter") — mit nativem Ordnerauswahl-Dialog, der standardmäßig im zuletzt für diese Notiz verwendeten Ordner öffnet, sofern der Browser das unterstützt; sonst ein Download mit Hinweis darauf

### Editor & Formatierung
- **Formatierungsleiste** — Überschriften (H1–H6), Fett/Kursiv/Durchgestrichen, Listen (Aufzählung/Nummeriert/Aufgaben), Einzug/Ausrücken, Einklappbarer Abschnitt, Zitat, Code, Code-Block, Trennlinie, Link, Bild, Tabelle — Buttons zeigen live an, welche Formatierung am Cursor aktiv ist
- **Einklappbare Abschnitte** — fügt einen `<details>`/`<summary>`-Block ein (GitHubs „Collapsed Sections"); eine vorhandene Auswahl wird automatisch zum einklappbaren Inhalt, der Cursor landet direkt in der Titelzeile zum Eintippen
- **Formatierte Inhalte einfügen** (Copy-Paste) — Rich Text aus Word, Google Docs oder einer Webseite wird beim Einfügen automatisch zu Markdown umgewandelt: Überschriften, Absätze/Zeilenumbrüche, Listen (inkl. Einrückung), Aufgabenlisten-Checkboxen, fett/kursiv/durchgestrichen, Links und Tabellen bleiben erhalten; reiner Text (z. B. Code oder bereits vorhandener Markdown-Quelltext) wird unverändert eingefügt. Nur verlinkte (nicht kopierte) Bilder in eingefügtem Rich Text werden dabei zusätzlich versucht herunterzuladen und wie ein normales Bild eingebettet, statt nur verlinkt zu bleiben — klappt nur bei Quellen, die das technisch erlauben, sonst bleibt der Link erhalten
- **Anpassbare Tastenkürzel** — praktisch jede Aktion aus Kopf- und Formatierungsleiste sowie den Tabellen-Werkzeugen hat ein Tastenkürzel (viele vorbelegt, alle im Tastenkürzel-Fenster per Klick auf eine neue Kombination umlegbar, inkl. automatischer Konfliktauflösung); auf Mac/iPad wird automatisch `Cmd` statt `Strg` verwendet und im Tastenkürzel-Fenster mit ⌘/⌥/⇧-Symbolen angezeigt
- **Tabellen-Werkzeuge** — Zeilen/Spalten einfügen, löschen, verschieben und nach einer Spalte sortieren, sobald der Cursor in einer Tabelle steht (funktioniert identisch für Markdown- und CSV-Tabellen)
- **Klick & Mehrfachauswahl in der Tabellen-Vorschau** — Klick auf eine Zelle (Markdown-Tabelle oder CSV) springt zur passenden Stelle im Quelltext; durch mehrere Zellen ziehen markiert eine Zeile, Spalte oder einen beliebigen Zellblock zum Kopieren als Tabelle in die Zwischenablage. Eine solche Mehrfachauswahl lässt sich auch direkt bearbeiten: `Entf`/`Rücktaste` leert alle markierten Zellen, und Fett/Kursiv/Durchgestrichen sowie Text-/Hintergrundfarbe aus der Formatierungsleiste wenden sich auf alle markierten Zellen gleichzeitig an (bei Markdown-Tabellen, auch auf Formelzellen — deren live berechneter Wert bleibt dabei weiterhin aktuell). Eine kopierte Tabellenauswahl lässt sich auch in eine CSV-Notiz einfügen und wird dabei automatisch ins CSV-Format übertragen (umgekehrt geht es ebenso: CSV-Werte in eine Markdown-Notiz eingefügt werden zur Tabelle)
- **Σ Formeln in Tabellen** — Excel-artige Berechnungen direkt in Markdown-Tabellenzellen: `=` in eine Zelle tippen (oder das Σ-Symbol in der Tabellen-Werkzeugleiste anklicken), dann einzelne Zellen oder ganze Bereiche in der Vorschau anklicken/aufziehen, um sie mit `+ - * /` zu einer Formel zu verknüpfen. `Enter` oder das runde ⊕-Symbol an der Zielzelle übernimmt die Formel; das Ergebnis erscheint sofort mit orangenem Rahmen und rechnet sich automatisch neu, sobald sich eine der Quellzellen ändert — auch über mehrere Ebenen hinweg (z. B. eine Summenzeile, die selbst wieder aus Formelzellen zusammengerechnet wird). Währungszeichen (€/$/£) werden für die Berechnung ignoriert und im Ergebnis wieder angehängt, Zellen mit Text statt Zahlen werden übersprungen. Ein Klick auf eine fertige Formelzelle blendet zwei Buttons ein: ✏️ zum Bearbeiten der Formel (als einfacher Text wie `A1+A2` im Quelltext) und ✕ zum Einfrieren — dabei wird der aktuelle Wert fest als Zahl eingetragen und die Formel entfernt. Ein Ausfüllkästchen an der Zellecke (wie in Excel) lässt sich waagerecht oder senkrecht auf Nachbarzellen ziehen, um die Formel dorthin zu kopieren, mit automatisch angepassten Zeilen-/Spaltenbezügen (`A1+A2` → `B1+B2` beim Ziehen nach rechts)
- **Textfarbe und Hintergrundfarbe** — zwei Buttons in der Formatierungsleiste öffnen eine kleine Farbpalette (Voreinstellungen plus eigene Farbe per Farbwähler); Hintergrundfarbe in einer Tabellenzelle füllt dabei die ganze Zelle aus, nicht nur den Text
- **Frei verschiebbarer Trenner** zwischen Editor und Vorschau — das Verhältnis lässt sich beliebig in beide Richtungen ziehen und wird, ebenso wie die Editor-/Vorschau-Sichtbarkeit selbst, individuell pro Notiz gemerkt und über WebDAV mitsynchronisiert; eine neue Notiz startet dabei immer bei 50/50 mit beiden Bereichen sichtbar
- **Suchen & Ersetzen** mit Treffer-Zähler ("3 von 12") und `‹`/`›`-Navigation zwischen allen Fundstellen; die Ersetzen-Funktion lässt sich per Checkbox ein-/ausblenden
- **Formatierung aufräumen** — ein Klick normalisiert überflüssige Leerzeilen im Dokument (Inhalt in Codeblöcken bleibt unangetastet)
- **Rückgängig/Wiederherstellen**, optionale **Rechtschreibprüfung**

### Medien einfügen
- **Bilder einfügen** per Copy-Paste, Drag & Drop oder Datei-Dialog — mit Auswahl, ob das Bild verkleinert, im Original oder erst bearbeitet eingefügt werden soll
- **🎨 Bildbearbeitung** — Helligkeit, Kontrast und Sättigung per Schieberegler, dazu Effekte wie Schwarz-Weiß, Sepia, Vintage, Lomo, Crossprozess, Sonnenaufgang, Schärfen und Vignette (via [CamanJS](https://github.com/meltingice/CamanJS), bundled) sowie ein Zuschneide-Werkzeug; erreichbar beim Einfügen eines neuen Bildes oder nachträglich über den 🎨-Button auf jedem bereits eingefügten (nicht-verlinkten) Bild in der Vorschau
- **📷 Kamera** — Foto direkt in der App aufnehmen (auf dem iPhone/iPad wahlweise Front- oder Rückkamera), optional zuschneiden, danach wie ein eingefügtes Bild weiterverarbeiten
- **Zeichnungen** — eingebauter Excalidraw-Editor (Button "🖌️ Zeichnung"), Skizzen bleiben jederzeit bearbeitbar: Klick auf die Zeichnung öffnet sie erneut zum Weiterzeichnen
- **🪪 Clipart/Piktogramme** — Suchdialog für die freie [ARASAAC](https://arasaac.org)-Piktogramm-Bibliothek (deutschsprachige Suche), ausgewählte Bilder landen wie eine Zeichnung im Dokument und bleiben bearbeitbar; eine per Checkbox zuschaltbare Lizenzangabe (Autor, Lizenz, Quelle) wird dann als Bildunterschrift ergänzt
- **Bildunterschriften** — jedes Bild kann über die Markdown-Bildsyntax (`![Alt](Adresse "Bildunterschrift")`) eine sichtbare Beschriftung darunter bekommen, in Vorschau, Präsentationsmodus und beiden HTML-Exporten
- **📐 Bildgröße und Rahmen** — jedes Bild (auch Zeichnungen und Piktogramme) lässt sich per Schieberegler auf 25–100 % verkleinern und mit einem farbigen, in Dicke und Eckenradius einstellbaren Rahmen versehen, direkt über einen Button beim Überfahren des Bildes; die Einstellung bleibt beim Speichern, erneuten Öffnen und über WebDAV erhalten
- **📄 PDF als Arbeitsblatt öffnen** — eine PDF-Datei öffnen oder hineinziehen, eine oder mehrere Seiten auswählen (einzeln, alle, oder ein Seitenbereich wie „1-3,5"); jede gewählte Seite wird direkt in den Zeichen-Editor geladen und kann dort beschriftet werden. Landet automatisch in einer neuen, eigenen Notiz — bei mehreren Seiten alle untereinander, mit automatischem Weiterschalten zur nächsten Seite nach dem Speichern
- **🎙️ Sprachaufnahmen und Audiodateien** — direkt über das Mikrofon aufnehmen oder eine vorhandene Audiodatei (`.wav`/`.ogg`/`.mp3`/`.m4a`) per Copy-Paste, Drag & Drop oder Datei-Dialog einfügen, in der Vorschau über einen Player abspielbar. Während einer laufenden Aufnahme erscheint am unteren Bildrand eine Steuerung mit Aufnahmedauer sowie Record-, Pause- und Beenden-Knopf — unabhängig davon, welche Betriebsart oder Ansicht gerade aktiv ist
- **🎬 Video einbetten** — YouTube- oder Vimeo-Link (oder eine direkte Videodatei-URL) einfügen, wird in der Vorschau automatisch als eingebetteter Player angezeigt
- **🌐 Web-Einbettungen (iframe)** — beliebige Webseiten oder Web-Widgets einbetten; erzeugt direkt editierbaren HTML-Code (Breite, Höhe, Vollbild-Erlaubnis, …) statt eines versteckten Einstellungsdialogs, inklusive vorlesbarem Titel-Text als Alt-Text-Gegenstück
- **Tabellenfeste Einfügung** — Bild, Foto, Zeichnung, Piktogramm oder Sprachaufnahme mit dem Cursor in einer Tabellenzelle eingefügt, verzichtet auf die sonst übliche Leerzeile danach, damit die Tabellenstruktur erhalten bleibt

### Canvas-Modus (freie Notizfläche)
- **Freie DIN-A4-Fläche** (`.canvas`-Dokumente, über ✨ Neu) statt eines linearen Dokuments — beliebig viele frei platzierbare, unabhängig voneinander bearbeitbare Notizzettel („Boxen") auf einer Seite, z. B. für ein Moodboard oder ein visuelles Arbeitsblatt
- Jede Box ist eine vollständige Mini-Notiz mit demselben Funktionsumfang wie ein normales Dokument (Formatierung, Bilder, Zeichnungen, Tabellen, Audio, Web-Einbettungen), mit **eigenem Design** und **eigener, unabhängig gespeicherter Zoomstufe**
- Eigene **Hintergrundfarbe** für die Fläche selbst, frei verschiebbar/zoombar per Maus oder Kopfzeile
- Eigener **Vorlesemodus**, der alle Boxen der Reihe nach (in Leserichtung) vorliest, sowie ein eigenständiger HTML-Export mit identischem Layout und funktionierendem Vorlesen-Button
- **Präsentationsmodus, Drucken/PDF und Zwischenablage-Kopie** funktionieren auch im Canvas: jede Box wird zu einer eigenen Folie (inkl. eigener Folientrennlinien innerhalb einer Box), der Druck passt sich automatisch auf ein DIN-A4-Blatt an, und die Kopierfunktion reiht alle Boxen in Leserichtung aneinander

### Liedblätter (ChordPro)
- **Akkorde über den Silben** — `.pro`/`.chopro`/`.cho`/`.chordpro`/`.crd` werden als Liedblatt gerendert, jeder Akkord in einem eigenen Kästchen über der richtigen Silbe; Abschnitte (Refrain, Strophe, Bridge) bekommen unterscheidbare Seitenklammern, Strophen werden nummeriert, der Refrain ist dezent hinterlegt
- **Transponieren und Kapodaster** — Transponieren schreibt das Blatt wirklich um, der Capo ändert nur die angezeigten Griffe; dazu ein **Tonartvorschlag**, der ausrechnet, bei welcher Kapodasterlage das Lied am leichtesten greifbar wird, und eine **Tonartschätzung** aus den Akkorden für Blätter ohne `{key}`
- **Griffbilder** — für jeden vorkommenden Akkord, aus einer geprüften Tabelle oder berechnet; Klick auf den Namen spielt den Akkord (synthetisiert, ohne Klangdateien), Klick auf das Bild öffnet einen **Editor für eigene Griffbilder**, die als Standard-`{define}` im Liedblatt gespeichert werden und damit auf jedem Gerät erscheinen
- **Drei Ansichten** — alles, nur Text oder nur Akkorde; dazu zweispaltiger Druck für Papier
- **Metronom** mit acht Stilen, Taktarten bis 12/8, Tempo-Antippen und wachem Bildschirm — als schwebendes Feld auch im Vollbild und im Teleprompter erreichbar
- **Stimmgerät** — nach Gehör oder chromatisch übers Mikrofon, mit zwölf Stimmungen für Gitarre, Bass und Ukulele
- **Import fremder Akkordblätter** — Text mit Akkorden über den Zeilen wird zu ChordPro; Überschriften werden zu Abschnitten, Tabulaturen bleiben erhalten, Tonart/Tempo/Capo werden erkannt oder lassen sich vorgeben
- **Songbook mit Setlisten** — ein Ordner voller Liedblätter wird zum durchsuchbaren Index; Setlisten lassen sich zusammenstellen und im **Vortragsmodus** ohne Umweg über den Index durchspielen
- **Fußschalter über MIDI** — Belegung wird gelernt statt vorgegeben: Teleprompter starten, Tempo, Blättern und nächstes/vorheriges Lied der Setliste

### Vorschau & Darstellung
- **Live-Vorschau** mit synchronisiertem Scrollen zwischen Quelltext und Vorschau
- **Inhaltsverzeichnis** — schwebender Button über der Vorschau, Klick auf eine Überschrift springt direkt dorthin
- **15 Designs** — GitHub Light/Dark, Solarized Paper, Academic Serif, Dracula, Gruvbox Dark, Sepia, High Contrast, Tokyo Night, Catppuccin Latte, PDF, Word, Journal, Clean, Bunt (inkl. farbiger Code-Hervorhebung); das Design wird pro Tab gemerkt und über WebDAV mitsynchronisiert, statt für die ganze App zu gelten — eine neue Notiz startet dabei immer im Design „GitHub Light“
- **Ansicht wechseln** — Vorschau, Quelltext oder geteilte Ansicht; plus echter **Vollbildmodus** (mit Fallback für iOS Safari). Welcher Bereich sichtbar ist, wird pro Notiz gemerkt und synchronisiert, und eine neu angelegte Notiz übernimmt die gerade eingestellte Ansicht
- **Präsentationsmodus** — Folien werden automatisch an Trennlinien (`---`) aufgeteilt und lassen sich per Tastatur, Klick oder Touch durchblättern, mit automatischer Zentrierung für reine Titel- bzw. Text-Folien
- **Inhaltsbreite** — im Einzel-Vorschaumodus wahlweise „Schmal" (zentriert, etwa DIN-A4-Textbreite) oder „Breit" (volle Fensterbreite); auf schmalen Bildschirmen wird ohnehin immer die volle Breite genutzt

### Betriebsarten und Oberfläche
- **Drei Betriebsarten** über das Burger-Menü: **Fokus** (Standard — nur der Text, keine Titelzeile, keine Werkzeugleiste, alle Aktionen im Menü), **Simple** (große Schrift, Design „Clean", stark reduzierte Werkzeugleiste — für Tablets, jüngere Nutzer:innen oder ablenkungsfreies Schreiben) und **Voll** (alle Werkzeuge sichtbar). Die Einstellung bleibt geräteweit gespeichert; `?simple=true`/`?simple=false` schaltet den Simple Modus auch per Link
- **Burger-Menü** — Öffnen, Speichern, Neu, Suchen & Ersetzen, Rechtschreibprüfung, Designwahl, Exporte, WebDAV-Einstellungen und „Über" mit Versionsnummer an einer Stelle statt in einer vollen Symbolleiste
- **Vertikale Notizleiste** — Button oben links öffnet die Notizliste als Overlay; angepinnt wird daraus eine feste Seitenspalte neben dem Notizfenster. Umbenennen, Umsortieren per Drag & Drop und Schließen funktionieren dort wie in der klassischen Tableiste
- **Fußleiste** — Zoom, Vollbild und Präsentation rechts unten, dazu Wort-/Zeichenzähler und Speicherplatzanzeige
- **Synchrones Scrollen** — Schalter direkt oben auf der Trennlinie, sichtbar nur in der geteilten Ansicht

### Synchronisation & Export
- **WebDAV-Synchronisierung** zwischen mehreren Geräten — automatisch bei Änderungen, in Intervallen oder manuell, inkl. Konfliktbehandlung (lokale Version behalten, Server-Version übernehmen oder beide als getrennte Dokumente behalten); der Sync-Button färbt sich hellgrün bei erfolgreich bestehender Verbindung, mit einem dunkelgrünen Ring als Countdown bis zur nächsten automatischen Synchronisierung, und erfolgreich synchronisierte Tabs bekommen einen grünen Rand in der Tableiste
- **Export** als eigenständige HTML-Datei oder direkt **Drucken/als PDF speichern**
- **Per E-Mail versenden** — öffnet das E-Mail-Programm des Geräts mit dem Notiztitel als Betreff und dem gerenderten Text (ohne Markdown-Zeichen) als Nachricht
- **Formatierte Notiz in die Zwischenablage kopieren** (zum Einfügen in Word, Outlook, Gmail, …)

### Sonstiges
- **Responsiv** — Bedienleisten werden auf schmalen Bildschirmen (z. B. iPhone) horizontal scrollbar, Editor/Vorschau stapeln sich übereinander
- **Installierbar** — App-Icon und Web-Manifest, auf iOS über „Zum Home-Bildschirm“ startbar wie eine echte App
- **Tastenkürzel-Hilfe** über das Burger-Menü ☰ — zeigt alle Kombinationen und erlaubt, sie direkt dort anzupassen
- **URL-Parameter für Direktlinks** — `?view=source`/`?view=preview`/`?view=split` legt die Startansicht unabhängig von zuvor gespeicherten Einstellungen fest; `?url=<Adresse-einer-.md-Datei>` öffnet automatisch ein Dokument von einer beliebigen (CORS-freigegebenen) Web-Adresse, ohne beim erneuten Öffnen desselben Links doppelt zu importieren; `?localstorage=false` startet die App bewusst ohne die gespeicherten Notizen zu laden (z. B. für Vorführungen) — zusammen mit `?url=` wird dann ausschließlich die dort angegebene Notiz geöffnet; `?view=kiosk` geht noch weiter und speichert während der ganzen Sitzung nichts im Browser (echter Kiosk-/Vorführ-Link, ohne Spuren). Alle Parameter lassen sich mit `?simple=true`/`?simple=false` kombinieren, um den Simple Modus gezielt an- oder auszuschalten. Details in der [Anleitung](./Anleitung.md#20-direktlinks-mit-url-parametern)

## 🚀 Verwenden

**Im Browser:** Einfach den [Live-Link](https://majort0m0.github.io/Markdown-Editor/) öffnen.

**Lokal:** `Markdown-Editor.html` herunterladen und im Browser öffnen (Doppelklick genügt) — funktioniert auch offline, da alle Bibliotheken (inklusive des eingebauten Zeichen-Editors und der PDF-Verarbeitung) bereits in der Datei enthalten sind. Dadurch ist die Datei mit ca. 14 MB spürbar größer als ein gewöhnlicher Markdown-Editor, lässt sich aber weiterhin als einzelne Datei weitergeben.

## 🛠️ Entwicklung

Die komplette App (HTML, CSS, JavaScript) liegt in `Markdown-Editor.html`. Es gibt keinen Build-Schritt, keine Abhängigkeiten zum Installieren — nach jeder Änderung einfach die Datei im Browser neu laden.

## 📄 Lizenz

CC-BY-NC — [Lernsachen.blog](https://lernsachen.blog)
