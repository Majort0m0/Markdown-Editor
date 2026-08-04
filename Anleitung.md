# Markdown Studio – Ausführliche Anleitung

Diese Anleitung beschreibt alle Funktionen von Markdown Studio Schritt für Schritt. Für einen schnellen Funktionsüberblick siehe die [README](./README.md); für technische Details zur Umsetzung siehe [`CLAUDE.md`](./CLAUDE.md).

Markdown Studio läuft komplett im Browser, ohne Installation und ohne Server — alle Dokumente werden lokal auf deinem Gerät gespeichert (bzw. optional über WebDAV mit anderen Geräten synchronisiert, siehe [Abschnitt 13](#13-webdav-synchronisierung-zwischen-mehreren-geräten)).

## Inhaltsverzeichnis

1. [Erste Schritte](#1-erste-schritte)
2. [Dokumente und Tabs](#2-dokumente-und-tabs)
3. [Text formatieren](#3-text-formatieren)
4. [Tabellen und CSV](#4-tabellen-und-csv)
5. [Bilder, Fotos, Zeichnungen und Piktogramme einfügen](#5-bilder-fotos-zeichnungen-und-piktogramme-einfügen)
6. [PDF-Dateien als Arbeitsblatt bearbeiten](#6-pdf-dateien-als-arbeitsblatt-bearbeiten)
7. [Audio, Video und Web-Einbettungen](#7-audio-video-und-web-einbettungen)
8. [Inhaltsverzeichnis-Panel in der Vorschau](#8-inhaltsverzeichnis-panel-in-der-vorschau)
9. [Vorlesemodus](#9-vorlesemodus)
10. [Präsentationen erstellen](#10-präsentationen-erstellen)
11. [Designs, Ansicht und Fokus-Modi](#11-designs-ansicht-und-fokus-modi)
12. [Suchen und Ersetzen](#12-suchen-und-ersetzen)
13. [WebDAV-Synchronisierung zwischen mehreren Geräten](#13-webdav-synchronisierung-zwischen-mehreren-geräten)
14. [Export und Teilen](#14-export-und-teilen)
15. [Tastenkürzel](#15-tastenkürzel)
16. [Speicherplatz und Datenschutz](#16-speicherplatz-und-datenschutz)
17. [Tipps und häufige Fragen](#17-tipps-und-häufige-fragen)
18. [Direktlinks mit URL-Parametern](#18-direktlinks-mit-url-parametern)
19. [Canvas-Modus (freie Notizfläche)](#19-canvas-modus-freie-notizfläche)

---

## 1. Erste Schritte

Markdown Studio lässt sich auf zwei Arten nutzen:

- **Im Browser:** [majort0m0.github.io/Markdown-Editor](https://majort0m0.github.io/Markdown-Editor/) öffnen — fertig.
- **Lokal/offline:** die Datei `Markdown-Editor.html` herunterladen und per Doppelklick im Browser öffnen. Alle Bibliotheken (inklusive Zeichen-Editor und PDF-Verarbeitung) sind bereits eingebettet, es wird keine Internetverbindung benötigt.

Auf einem Smartphone oder Tablet lässt sich die Web-Version über „Zum Home-Bildschirm hinzufügen" (iOS) installieren und startet dann wie eine eigenständige App ohne Browser-Kopfzeile.

**Die Oberfläche im Überblick** (von oben nach unten):

- **Kopfzeile** — Neu, Öffnen, Speichern, Rückgängig/Wiederherstellen, Suchen, Formatierung aufräumen, Rechtschreibprüfung, Editor/Vorschau ein-/ausblenden, synchrones Scrollen, Zoom, Vollbild, Präsentationsmodus, HTML-Export, Drucken, Formatiert kopieren, WebDAV-Sync, Design-Auswahl, Simple-Schalter, Tastenkürzel-Hilfe
- **Tableiste** — alle offenen Dokumente, „+" für einen neuen leeren Tab
- **Formatierungsleiste** — Überschriften, Textformatierung, Listen, Medien, Tabellen
- **Editor (links) und Vorschau (rechts)** — durch einen ziehbaren Trenner getrennt, live synchronisiert
- **Fußleiste** — Wörter/Zeichen der aktuellen Notiz, Gesamtgröße aller offenen Notizen, Lizenzhinweis

Direkt beim ersten Start ist eine „Willkommen"-Notiz mit einer kurzen Funktionsübersicht bereits geöffnet.

## 2. Dokumente und Tabs

### Neues Dokument erstellen

- **✨ Neu** (Kopfzeile) öffnet die Vorlagenauswahl mit 14 Vorlagen: Blanko, Meeting-Notizen, README, Projektplan, Checkliste, Tagebuch-Eintrag, Rezept, Lebenslauf, Blogartikel, Brief, Präsentation, Fortbildungsplanung, Stundenplan und eine HTML-„Hello World"-Vorlage. Eine Vorlage anklicken erstellt sofort einen neuen Tab mit dem passenden Grundgerüst.
- **„+"** in der Tableiste erstellt direkt ein leeres Dokument, ohne die Vorlagenauswahl zu öffnen — der schnelle Weg für „einfach eine neue Notiz".

Ein unbenanntes Dokument übernimmt automatisch die erste `#`-Überschrift als Dateiname, solange es nicht manuell umbenannt oder gespeichert wurde.

### Öffnen und Speichern

- **📂 Öffnen** lädt eine oder mehrere Dateien von der Festplatte (Markdown, TXT, CSV, JSON, HTML, PDF — siehe [Abschnitt 6](#6-pdf-dateien-als-arbeitsblatt-bearbeiten) für PDFs).
- **💾 Speichern** (auch `Strg`/`Cmd`+`S`) schreibt in die zuletzt geöffnete/gespeicherte Datei zurück, sofern der Browser das unterstützt (Chrome/Edge); sonst wird ein Download ausgelöst.
- Eine Datei lässt sich auch per **Drag & Drop** direkt ins Browserfenster ziehen, um sie zu öffnen.
- Alle offenen Tabs werden zusätzlich automatisch im Browser (lokal) gespeichert — beim nächsten Öffnen der App sind alle Notizen unverändert wieder da, auch ohne sie manuell gespeichert zu haben.

### Tabs umbenennen und Format wechseln

Doppelklick auf einen Tab öffnet ein Umbenennen-Feld mit einem Format-Dropdown (`.md` / `.txt` / `.csv` / `.json` / `.html`). So lässt sich ein Dokument gezielt in ein anderes Dateiformat konvertieren, z. B. um eine Tabelle als CSV weiterzuverarbeiten. `Enter` bestätigt, `Escape` bricht ab.

## 3. Text formatieren

Die Formatierungsleiste unter der Tableiste bietet:

| Bereich | Funktionen |
|---|---|
| Überschriften | Dropdown H1–H6 |
| Text | Fett (`Strg`+`B`), Kursiv (`Strg`+`I`), Durchgestrichen |
| Listen | Aufzählung, Nummerierte Liste, Aufgabenliste (Checkbox) |
| Einzug | Ausrücken (`Umschalt`+`Tab`), Einzug (`Tab`) |
| Blockelemente | Einklappbarer Abschnitt, Zitat, Code (Inline), Code-Block, Trennlinie |
| Verweise & Medien | Link, Web-Einbettung, Bild, Foto, Zeichnung, Sprachaufnahme, Video, Tabelle |

**Toggle-Verhalten:** jeder Formatierungs-Button erkennt, ob die Formatierung am Cursor bereits aktiv ist, und hebt sie dann wieder auf, statt sie doppelt anzuwenden — z. B. macht ein zweiter Klick auf „Fett" innerhalb von fettem Text den Text wieder normal. Der aktuell aktive Zustand wird in der Werkzeugleiste farblich hervorgehoben.

**Listen fortsetzen:** `Enter` innerhalb einer Aufzählungs-, Nummerierungs- oder Aufgabenliste erzeugt automatisch den nächsten Listenpunkt (bei nummerierten Listen mit hochgezählter Nummer); `Enter` auf einem leeren Listenpunkt beendet die Liste.

**Aufgaben abhaken:** Checkboxen (`- [ ]`) lassen sich direkt in der Vorschau anklicken, ohne den Quelltext zu bearbeiten — der Haken wird automatisch im Markdown nachgezogen.

**Einklappbare Abschnitte:** der Button „Einklappbarer Abschnitt" fügt einen `<details>`/`<summary>`-Block ein (GitHubs „Collapsed Sections", z. B. für Lösungen, Spoiler oder optionale Zusatzinfos, die man erst bei Bedarf aufklappt). Der Cursor landet direkt in der Titelzeile, um sie sofort zu betiteln; war vorher Text markiert, wird dieser automatisch zum einklappbaren Inhalt darunter. In der Vorschau erscheint ein anklickbares Dreieck davor — ein Klick klappt den Inhalt auf oder wieder zu.

**Formatierung aufräumen** (Besen-Symbol) normalisiert überflüssige Leerzeilen im gesamten Dokument und setzt Abschnitte wie Überschriften, Tabellen und eingebettete Medien sauber ab — Inhalt innerhalb von Codeblöcken bleibt dabei unangetastet.

## 4. Tabellen und CSV

Eine Tabelle über den **Tabelle**-Button in der Formatierungsleiste einfügen (leeres Grundgerüst) oder direkt Markdown-Syntax tippen. Sobald der Cursor innerhalb einer Tabelle steht, erscheint eine eigene Werkzeugleiste darüber:

- Zeile/Spalte davor oder danach einfügen
- Zeile/Spalte verschieben (nach oben/unten bzw. links/rechts)
- Zeile/Spalte löschen
- Nach der Spalte unter dem Cursor sortieren — erneuter Klick kehrt die Sortierrichtung um

**In der Vorschau:** ein Klick auf eine Tabellenzelle springt direkt zur passenden Stelle im Quelltext. Durch mehrere Zellen ziehen markiert eine Zeile, Spalte oder einen beliebigen Zellblock, der sich mit `Strg`/`Cmd`+`C` als fertige Tabelle in die Zwischenablage kopieren lässt (z. B. zum Einfügen in Excel).

**CSV-Dateien** werden automatisch als Tabelle dargestellt und lassen sich mit genau denselben Werkzeugen bearbeiten wie eine Markdown-Tabelle — das gesamte Dokument zählt dabei als eine Tabelle (kein Trennzeichen zwischen Kopf- und Datenzeilen nötig, im Gegensatz zu Markdown).

**Medien in Tabellenzellen:** Wird ein Bild, Foto, eine Zeichnung, ein Piktogramm oder eine Sprachaufnahme eingefügt, während der Cursor in einer Tabellenzelle (oder in einer CSV-Datei) steht, lässt die App die sonst übliche Leerzeile danach weg — so bleibt die Tabellenstruktur erhalten, statt durch zusätzliche Zeilenumbrüche zu zerbrechen.

## 5. Bilder, Fotos, Zeichnungen und Piktogramme einfügen

### Bilder einfügen

Drei Wege, ein Bild einzufügen:

1. **Copy-Paste** — ein Bild aus der Zwischenablage direkt mit `Strg`/`Cmd`+`V` in den Editor einfügen.
2. **Drag & Drop** — eine Bilddatei ins Editorfenster ziehen.
3. **🖼️ Bild einfügen** (Formatierungsleiste) — öffnet den Dateidialog.

In allen drei Fällen erscheint ein Dialog mit der Wahl zwischen „📉 Verkleinert einfügen" (empfohlen, kleinere Dateigröße) und „🖼️ Original einfügen". Das Bild wird nicht als riesiger Base64-Textblock in den sichtbaren Quelltext eingefügt, sondern als kurze Referenz (`![...](asset:...)`) — die eigentlichen Bilddaten werden separat verwaltet, damit der Quelltext übersichtlich bleibt.

### Foto aufnehmen

**📷 Foto aufnehmen** öffnet die Gerätekamera direkt in der App (auf Geräten mit mehreren Kameras lässt sich zwischen Front- und Rückkamera wechseln). Nach der Aufnahme kann das Foto zugeschnitten werden, bevor es wie ein normales Bild eingefügt wird. Benötigt eine sichere Verbindung (`https://` oder lokal geöffnete Datei) sowie Kamera-Berechtigung.

### Zeichnungen erstellen und bearbeiten

**🖌️ Zeichnung einfügen** öffnet einen vollständigen, eingebauten Zeichen-Editor (Excalidraw) in einem Overlay — Formen, Freihandzeichnung, Text, Pfeile, Farben. Nach dem Zeichnen auf „💾 Speichern" klicken, um die Zeichnung als Bild ins Dokument einzufügen.

**Eine bestehende Zeichnung weiterbearbeiten:** In der Vorschau beim Überfahren einer eingefügten Zeichnung mit der Maus erscheint ein „✏️ Bearbeiten"-Button — er öffnet die Zeichnung wieder im selben Editor, exakt so, wie sie zuletzt gespeichert wurde, bereit zum Weiterzeichnen.

### Clipart / Piktogramme einfügen (ARASAAC)

Der **🪪 Clipart**-Button (zwischen Zeichnung und Sprachaufnahme) öffnet einen Suchdialog für die freie Piktogramm-Bibliothek [ARASAAC](https://arasaac.org) — tausende einfache, leicht verständliche Symbolbilder, z. B. für Kommunikationshilfen, Arbeitsblätter oder Leichte Sprache, auf Deutsch durchsuchbar:

1. Suchbegriff eingeben (z. B. „Haus", „Auto", „Familie") und mit Enter oder „Suchen" bestätigen.
2. In der Ergebnisgalerie auf ein Piktogramm klicken — es wird sofort eingefügt, genau wie eine Zeichnung (siehe oben): weiterhin über „✏️ Bearbeiten" veränderbar, z. B. um mehrere Piktogramme zu kombinieren oder eine eigene Beschriftung zu ergänzen.

Braucht anders als der Rest der App eine Internetverbindung, da die Suche live bei ARASAAC läuft.

**Lizenzangabe:** ARASAAC-Piktogramme stehen unter CC BY-NC-SA und verlangen eine Quellenangabe. Die Checkbox „Lizenzangabe hinzufügen" im Suchdialog ist standardmäßig **deaktiviert** — nicht jede Einfügung (z. B. ein schnelles Symbol in einem internen Arbeitsblatt) braucht sichtbar eine Quellenzeile. Wird sie vor dem Einfügen aktiviert, ergänzt die App automatisch Autor, Lizenz und Quelle als sichtbare [Bildunterschrift](#bildunterschriften) unter dem Piktogramm.

### Bildunterschriften

Jedes Bild kann einen sichtbaren Text darunter bekommen — über die optionale Titel-Angabe der Markdown-Bildsyntax: `![Alt-Text](Adresse "Bildunterschrift")`. Der Teil in Anführungszeichen erscheint als kleine, dezente Beschriftung direkt unter dem Bild — in der Live-Vorschau, im Präsentationsmodus und in beiden HTML-Exporten. Praktisch für Quellen- oder Lizenzangaben (siehe Clipart oben) oder kurze Bildunterschriften, funktioniert bei jedem Bild, nicht nur bei ARASAAC-Piktogrammen.

### Alt-Text bearbeiten

Jedes eingefügte Bild/Foto/jede Zeichnung/jedes Piktogramm bekommt automatisch einen sprechfreundlichen Standard-Alt-Text („Das ist ein Bild." / „Das ist ein Foto." / „Das ist eine Zeichnung." / „Das ist ein Piktogramm."), der z. B. im [Vorlesemodus](#9-vorlesemodus) vorgelesen wird. Beim Überfahren eines Bildes in der Vorschau erscheint unten rechts ein „🏷️ Alt-Text"-Button — er markiert den Alt-Text direkt im Quelltext zum Überschreiben.

## 6. PDF-Dateien als Arbeitsblatt bearbeiten

Eine sehr nützliche Funktion für Arbeitsblätter, Formulare oder gescannte Dokumente: eine PDF-Datei öffnen und einzelne Seiten direkt beschriften.

**Schritt für Schritt:**

1. Eine PDF-Datei über **📂 Öffnen** auswählen oder direkt ins Fenster ziehen — der Dialog „📄 PDF öffnen" erscheint.
2. Auswählen, welche Seiten geladen werden sollen: „Nur die erste Seite", „Alle Seiten" oder „Bestimmte Seiten" (z. B. `1-3,5`).
3. **📥 Öffnen** klicken. Es wird eine neue, eigene Notiz erstellt; jede gewählte Seite landet dort als eigener Abschnitt („## Seite 1", „## Seite 2", …) mit dem Seitenbild direkt darunter.
4. Eine Seite anklicken (bzw. „✏️ Bearbeiten" beim Überfahren) öffnet sie im Zeichen-Editor — dort lässt sich direkt auf dem Arbeitsblatt schreiben, markieren oder zeichnen, genau wie bei einer normalen Zeichnung (siehe [Abschnitt 5](#5-bilder-fotos-zeichnungen-und-piktogramme-einfügen)). Beim ersten Öffnen wird die Seite automatisch passend positioniert und skaliert.
5. **💾 Speichern** im Zeichen-Editor sichert die Beschriftung in genau dieser Seite.

**Hinweis bei großen/mehrseitigen PDFs:** Da jede Seite als Bild eingebettet wird, kann das Speichern einer sehr großen, mit vielen Anmerkungen versehenen Seite spürbar länger dauern — die App wartet in diesem Fall bis zu 30 Sekunden, bevor sie einen Fehler meldet; ein erneuter Klick auf „Speichern" hilft, falls es doch einmal zu einer Fehlermeldung kommt. Bei sehr vielen/großen importierten Seiten weist die App zusätzlich per Hinweis auf hohen Speicherbedarf hin und empfiehlt, die Notiz per WebDAV zu sichern (siehe [Abschnitt 13](#13-webdav-synchronisierung-zwischen-mehreren-geräten) und [Abschnitt 16](#16-speicherplatz-und-datenschutz)).

## 7. Audio, Video und Web-Einbettungen

### Sprachaufnahme und Audiodateien

**🎙️ Sprachaufnahme einfügen** startet eine Audioaufnahme über das Mikrofon des Geräts; erneutes Klicken beendet sie. Die Aufnahme wird an der Cursorposition eingefügt und ist in der Vorschau über einen normalen Audio-Player abspielbar. Auch hier gilt: Mikrofon-Berechtigung und eine sichere Verbindung sind nötig.

Eine bereits vorhandene Audiodatei (`.wav`, `.ogg`, `.mp3`, `.m4a`) lässt sich genauso einfach einfügen wie ein Bild — auf denselben drei Wegen: **Copy-Paste**, **Drag & Drop** ins Editorfenster oder **📂 Öffnen** (Dateidialog). In allen drei Fällen landet die Datei als abspielbarer Audio-Player an der Cursorposition, statt (wie andere Dateiformate) als eigener neuer Tab geöffnet zu werden.

### Video einbetten

**🎬 Video einbetten** fügt das Grundgerüst `![Video]()` ein, mit dem Cursor bereits zwischen den Klammern. Dort einen Link einfügen:

- ein YouTube-Link (`youtube.com/watch?v=...`, `youtu.be/...` oder ein Shorts-Link)
- ein Vimeo-Link (`vimeo.com/...`)
- eine direkte Videodatei-URL (`.mp4`, `.webm`, `.ogv`, `.ogg`, `.mov`)

Die Vorschau zeigt automatisch einen eingebetteten Player statt eines einfachen Links.

### Web-Einbettungen (iframe)

**🌐 Web-Einbettung einfügen** (in der Formatierungsleiste zwischen Link und Bild) fügt ein einbettbares Fenster (iframe) ein, mit dem sich eine beliebige Webseite oder ein Web-Widget direkt im Dokument anzeigen lässt — z. B. eine interaktive Karte, ein Online-Formular oder ein anderes einbettbares Element. Der Cursor landet direkt zwischen den Anführungszeichen von `src=""`, bereit für die einzubettende Adresse.

Anders als bei Bildern oder Videos wird hier der vollständige, roh editierbare HTML-Code eingefügt, nicht nur eine kurze Referenz — alle üblicherweise anpassbaren Eigenschaften stehen direkt sichtbar im Quelltext und lassen sich dort von Hand nachträglich ändern, u. a.:

| Eigenschaft | Bedeutung |
|---|---|
| `src` | Adresse der einzubetten Seite (leer vorbelegt) |
| `width` / `height` | Breite und Höhe des eingebetteten Fensters |
| `title` | Alt-Text-Gegenstück fürs Einbetten — wird im [Vorlesemodus](#9-vorlesemodus) vorgelesen |
| `allowfullscreen` / `allow="fullscreen"` | erlaubt der eingebetteten Seite, in den Vollbildmodus zu wechseln |

Der voreingestellte `title`-Text „Das ist eine Einbettung." lässt sich wie jeder andere Text direkt im Quelltext überschreiben.

## 8. Inhaltsverzeichnis-Panel in der Vorschau

Der schwebende Button oben rechts über der Vorschau (Listen-Symbol) öffnet ein Inhaltsverzeichnis aus allen Überschriften (H1–H6) des Dokuments. Ein Klick auf einen Eintrag springt direkt zur passenden Stelle in der Vorschau. Das Panel bleibt beim Scrollen sichtbar an seiner Position und schließt sich automatisch bei Klick daneben, per `Escape` oder wenn die Vorschau ausgeblendet wird.

## 9. Vorlesemodus

Der 🔊-Button (oben rechts neben dem Inhaltsverzeichnis-Button) liest das aktuelle Dokument laut vor und hebt dabei Wort für Wort den gerade gesprochenen Text hervor.

- **Klick** startet das Vorlesen, **erneuter Klick** pausiert an derselben Stelle, **noch ein Klick** setzt fort.
- Bilder, Fotos, Zeichnungen und Piktogramme werden mit ihrem Alt-Text (siehe [Abschnitt 5](#5-bilder-fotos-zeichnungen-und-piktogramme-einfügen)) angekündigt, sofern einer gesetzt ist — sonst mit einer generischen Ankündigung („Hier ist ein Bild." usw.). Videos werden immer als „Hier ist ein Video." angekündigt. Eine [Web-Einbettung](#7-audio-video-und-web-einbettungen) wird immer mit ihrem Titel-Text vorgelesen.
- Sprachaufnahmen und eingefügte Audiodateien werden während des Vorlesens tatsächlich abgespielt.
- Das Vorlesen stoppt automatisch beim Tab-Wechsel, beim Bearbeiten des Texts oder wenn die Vorschau ausgeblendet wird — nie mitten im Text unbemerkt weiterlaufend im Hintergrund.
- Steht der Vorlesemodus innerhalb einer Präsentation (siehe [Abschnitt 10](#10-präsentationen-erstellen)) am Ende einer Folie an, blättert er automatisch zur nächsten Folie weiter und liest dort fort.
- Der [Canvas-Modus](#19-canvas-modus-freie-notizfläche) hat einen eigenen Vorlesen-Button, der alle Notizzettel der Reihe nach vorliest — siehe dort.

Der Vorlesemodus funktioniert identisch in der Live-Vorschau, im Präsentationsmodus und in beiden HTML-Exporten (siehe [Abschnitt 14](#14-export-und-teilen)) — eine exportierte Datei liest sich also auch offline und ohne diese App selbst vor.

## 10. Präsentationen erstellen

Aus jedem Dokument lässt sich mit einem Klick eine Bildschirmpräsentation machen — ganz ohne separates Präsentationsprogramm.

**Folien trennen:** eine Zeile mit nur `---` (oder `***` bzw. `___`), am Zeilenanfang oder nach einer Leerzeile, trennt zwei Folien voneinander. Die mitgelieferte „Präsentation"-Vorlage (über ✨ Neu) zeigt das direkt an einem Beispiel.

**Präsentationsmodus starten:** Button in der Kopfzeile (Bildschirm-Symbol). Navigation:

- Pfeiltasten oder Leertaste (Tastatur)
- Linke Bildschirmhälfte anklicken/antippen = vorherige Folie, rechte Hälfte = nächste Folie
- `Escape` oder das ✕ oben rechts beendet die Präsentation

**Automatisches Layout:** eine Folie mit nur einer einzelnen H1-Überschrift wird groß mittig zentriert (Titelfolie); eine Folie ganz ohne Überschrift (z. B. ein Zitat) wird als Block zentriert, behält aber linksbündigen Text; jede andere Folie (Überschrift + Inhalt) wird normal wie in der Vorschau dargestellt.

**Weitere Werkzeuge innerhalb der Präsentation:** ein eigenes Inhaltsverzeichnis unten links (springt zur ersten Überschrift jeder Folie), der Vorlesemodus oben links sowie eine Folienzähler-Anzeige unten rechts.

## 11. Designs, Ansicht und Fokus-Modi

### Designs

15 Vorschau-Designs stehen über das Dropdown in der Kopfzeile zur Auswahl: GitHub Light/Dark, Solarized Paper, Academic Serif, Dracula, Gruvbox Dark, Sepia, High Contrast, Tokyo Night, Catppuccin Latte, PDF, Word, Journal, Clean, Bunt (mit farbiger Code-Hervorhebung). Das Design wird **pro Tab** gemerkt, nicht global für die ganze App — jedes Dokument kann also sein eigenes Design haben, und diese Wahl wird bei aktivem WebDAV-Sync mit übertragen.

### Editor/Vorschau und geteilte Ansicht

- Editor bzw. Vorschau lassen sich einzeln ausblenden (zwei Buttons in der Kopfzeile), um mehr Platz für die jeweils andere Seite zu haben.
- Der Trenner zwischen Editor und Vorschau lässt sich per Maus/Touch frei in beide Richtungen ziehen.
- **Synchrones Scrollen** (Doppelpfeil-Symbol) hält Editor und Vorschau beim Scrollen prozentual aufeinander abgestimmt; lässt sich bei Bedarf abschalten.
- **Zoom** vergrößert/verkleinert Editor und Vorschau gemeinsam (`Strg`/`Cmd`+`+`/`-`).

### Vollbildmodus

Blendet Kopf-, Fuß- und Tableiste sowie alle Menüs aus. Auf den meisten Geräten der echte Browser-Vollbildmodus; auf iOS Safari (das dies nicht unterstützt) ein CSS-Fallback, der den sichtbaren Bereich ausfüllt. In beiden Fällen bleibt oben rechts ein kleiner ✕-Button sichtbar, um den Vollbildmodus wieder zu verlassen.

### Simple Modus

Der „Simple"-Schalter oben rechts reduziert die Werkzeugleisten auf das Nötigste (Öffnen, Speichern, Rückgängig/Wiederherstellen, Quelltext/Vorschau als einfacher Umschalter statt Splitscreen, Zoom, Vollbild sowie Überschrift/Bild/Foto/Zeichnung/Audio), stellt automatisch das Design „Clean" und eine größere Zoomstufe ein und springt beim Einfügen von Medien direkt in die Vorschau. Praktisch für Tablets, jüngere Nutzer:innen oder eine bewusst aufgeräumte Schreibumgebung. Lässt sich auch direkt per Link mit angehängtem `?simple=true` aktiviert (bzw. `?simple=false` deaktiviert) öffnen — siehe [Abschnitt 18](#18-direktlinks-mit-url-parametern).

## 12. Suchen und Ersetzen

**🔍 Suchen** (auch `Strg`/`Cmd`+`F`) öffnet die Suchleiste mit Treffer-Zähler („3 von 12") und `‹`/`›`-Navigation zwischen allen Fundstellen. Über die Checkbox „Ersetzen" lässt sich zusätzlich ein Ersetzen-Feld einblenden, mit „Ersetzen" (nur aktueller Treffer) und „Alle ersetzen".

## 13. WebDAV-Synchronisierung zwischen mehreren Geräten

Dokumente lassen sich zwischen mehreren Geräten (z. B. Laptop und Tablet) über einen eigenen WebDAV-Speicher synchronisieren (z. B. Nextcloud). Es wird dabei nur eine einzelne JSON-Datei am angegebenen Ort verwendet — kein Ordner-Browsing, keine sonstigen Berechtigungen nötig.

**Einrichtung:**

1. ☁️-Button in der Kopfzeile öffnet die WebDAV-Einstellungen.
2. **Server-URL** eintragen — entweder die genaue Zieldatei oder einfach ein Ordner (die App hängt dann automatisch `markdown-studio-sync.json` an).
3. **Benutzername** und **App-Kennwort** eintragen (bei den meisten Cloud-Diensten ein separat erstelltes App-Kennwort, nicht das Hauptpasswort).
4. „Automatisch synchronisieren" aktivieren und ein Intervall wählen, oder manuell über „🔄 Jetzt synchronisieren" synchronisieren.

Der ☁️-Button färbt sich **hellgrün**, sobald mindestens eine Synchronisierung tatsächlich erfolgreich war und seitdem kein Fehler aufgetreten ist — bei aktivem Intervall zeigt zusätzlich ein dunkelgrüner Ring um den Button an, wie viel Zeit bis zur nächsten automatischen Synchronisierung verbleibt (voller Kreis = Synchronisierung steht unmittelbar bevor). In der Tableiste bekommt jeder erfolgreich synchronisierte, unveränderte Tab einen schmalen grünen Rand.

**Was wird synchronisiert:** Name, Inhalt, eingefügte Bilder/Zeichnungen/Audio und das gewählte Design jedes Dokuments. Rein geräteweite Einstellungen (Splitscreen-Verhältnis, welche Bereiche gerade sichtbar sind, Zoomstufe) werden **nicht** mit übertragen.

**Bei Konflikten** (dasselbe Dokument wurde auf zwei Geräten unterschiedlich geändert) fragt die App pro betroffenem Dokument nach: „Lokal behalten", „Server-Version" übernehmen oder „Beide behalten" (die Server-Version landet dann als zusätzliche, neue Notiz).

**Zugangsdaten auf ein anderes Gerät übertragen:** „📄 Konfigurationsdatei öffnen" in den WebDAV-Einstellungen erstellt eine vorausgefüllte Notiz mit der Server-URL (Benutzername/Passwort bewusst leer gelassen). Diese Notiz auf dem zweiten Gerät öffnen, Zugangsdaten ergänzen — die App erkennt das Format automatisch und übernimmt die Einstellungen direkt, ohne das Einstellungsfenster manuell öffnen zu müssen.

## 14. Export und Teilen

- **Als eigenständige HTML-Datei exportieren** — erzeugt eine einzelne, komplett unabhängige HTML-Datei mit dem aktuellen Design, die sich in jedem Browser ohne diese App öffnen lässt (inklusive funktionierendem Vorlesemodus und Inhaltsverzeichnis). Enthält das Dokument Folientrennlinien (`---`), fragt die App zusätzlich, ob stattdessen als **eBook-Widget** exportiert werden soll — eine eigenständige, klickbare Diaschau-Datei mit denselben Übergängen wie der Präsentationsmodus.
- **🖨️ Drucken / Als PDF speichern** — nutzt den normalen Druckdialog des Browsers; nur die Vorschau wird gedruckt, im aktuell gewählten Design (inklusive Hintergrundfarben).
- **📋 Formatierte Notiz in die Zwischenablage kopieren** — kopiert das gerenderte Dokument (Überschriften, Fett/Kursiv, Listen, Tabellen, Bilder) als formatierten Text, bereit zum Einfügen in Word, Outlook, Gmail o. Ä. Für exakte Absatz-Abstände zählt hier auch die Anzahl mehrerer aufeinanderfolgender Leerzeilen im Quelltext.

## 15. Tastenkürzel

| Tastenkombination | Aktion |
|---|---|
| `Strg`/`Cmd` + `S` | Speichern |
| `Strg`/`Cmd` + `B` | Fett |
| `Strg`/`Cmd` + `I` | Kursiv |
| `Strg`/`Cmd` + `F` | Suchen & Ersetzen ein-/ausblenden |
| `Strg`/`Cmd` + `Z` | Rückgängig |
| `Strg`/`Cmd` + `Y` bzw. `Strg`/`Cmd` + `Umschalt` + `Z` | Wiederherstellen |
| `Strg`/`Cmd` + `+` / `-` | Vergrößern / Verkleinern |
| `Tab` / `Umschalt` + `Tab` | Einzug / Ausrücken (bei Textauswahl oder am Zeilenanfang) |
| `Enter` in einer Liste | Nächsten Listenpunkt fortsetzen |
| `Enter` auf leerem Listenpunkt | Liste beenden |
| `Esc` | Aktuelles Fenster/Modal schließen, Präsentation/Vollbild beenden |

Diese Übersicht ist auch jederzeit über das ⌨️-Symbol in der Kopfzeile abrufbar.

## 16. Speicherplatz und Datenschutz

Alle Dokumente und eingefügten Medien werden ausschließlich lokal im Browser gespeichert — es findet keine Übertragung an einen Server statt, außer wenn WebDAV-Synchronisierung aktiv eingerichtet wurde (siehe [Abschnitt 13](#13-webdav-synchronisierung-zwischen-mehreren-geräten)), und dann nur an das selbst angegebene Ziel.

Text und Metadaten liegen im schnellen `localStorage` des Browsers; größere Anhänge (Bilder, Zeichnungen, PDF-Seiten, Audio) liegen in IndexedDB, das deutlich mehr Kapazität bietet. Die Fußleiste zeigt rechts neben der Wort-/Zeichen-Statistik der aktuellen Notiz einen Prozentbalken mit dem insgesamt belegten Speicherplatz sowie der reinen Datengröße aller aktuell geöffneten Notizen zusammen. Sollte der Speicherplatz des Browsers dennoch einmal knapp werden, erscheint zusätzlich ein kleines Warndreieck am betroffenen Tab.

**Empfehlung bei sehr großen Dokumenten** (viele/hochauflösende Bilder, umfangreiche PDF-Importe): regelmäßig über WebDAV sichern oder als Datei exportieren — das lokale lokale Speicherlimit des Browsers ist zwar großzügig, aber nicht unbegrenzt.

## 17. Tipps und häufige Fragen

**Wie öffne ich dasselbe Dokument auf einem anderen Gerät?** Entweder die gespeicherte `.md`-Datei übertragen (sie ist vollständig eigenständig, inklusive aller eingebetteten Bilder als Base64-Daten) oder WebDAV-Synchronisierung einrichten (siehe [Abschnitt 13](#13-webdav-synchronisierung-zwischen-mehreren-geräten)).

**Bleibt eine Zeichnung nach dem Speichern der Datei weiter bearbeitbar?** Ja, solange die Notiz innerhalb dieser App geöffnet bleibt oder als `.md`-Datei wieder in dieser App geöffnet wird. Wird die Datei dagegen extern bearbeitet oder in einer anderen Markdown-App geöffnet, geht diese Information verloren — sie erscheint dann als normales, nicht mehr per Doppelklick bearbeitbares Bild.

**Funktioniert die App ohne Internetverbindung?** Ja — sowohl die online gehostete Version (nach dem ersten Laden) als auch besonders die lokal heruntergeladene `Markdown-Editor.html` funktionieren komplett offline. Nur Kamera, Mikrofon, WebDAV-Synchronisierung und die Clipart-Suche (siehe [Abschnitt 5](#5-bilder-fotos-zeichnungen-und-piktogramme-einfügen)) benötigen die jeweilige Geräteberechtigung bzw. eine Verbindung zum eigenen Server bzw. zu ARASAAC.

**Wo werden Video-Links abgespielt?** Eingebettete YouTube-/Vimeo-Videos benötigen zum Abspielen eine echte Internetverbindung sowie einen Aufruf über `http(s)://` (nicht `file://`) — beim lokalen Öffnen der Datei direkt vom Dateisystem wird stattdessen ein Hinweis mit Link zum Original angezeigt.

## 18. Direktlinks mit URL-Parametern

An die Adresse der App lassen sich Parameter anhängen, um sie in einem bestimmten Zustand zu öffnen — praktisch für Lesezeichen, geteilte Links oder eigene Verknüpfungen (z. B. auf dem Startbildschirm eines Tablets). Alle Parameter lassen sich auch kombinieren (`?localstorage=false&view=preview&url=...`).

**Wichtig:** Nur vor dem *ersten* Parameter steht ein `?` — jeder weitere Parameter wird mit `&` angehängt, nicht mit einem erneuten `?`. Ein zweites `?` beendet die Parameterliste nicht neu, sondern wird als ganz normales Zeichen behandelt und landet im Wert des vorherigen Parameters, wodurch keiner der Parameter mehr wie erwartet erkannt wird.

- ✅ Richtig: `?localstorage=false&simple=true&view=preview`
- ❌ Falsch: `?localstorage=false?simple=true?view=preview`

### Startansicht festlegen: `?view=`

Legt fest, welcher Bereich beim Öffnen sichtbar ist — unabhängig davon, was zuletzt in diesem Browser eingestellt war:

| Wert | Ergebnis |
|---|---|
| `?view=source` | Nur der Quelltext-Editor |
| `?view=preview` | Nur die Vorschau |
| `?view=split` | Editor und Vorschau nebeneinander (geteilte Ansicht) |
| `?view=kiosk` | Geteilte Ansicht, aber zusätzlich ein vollständiger „Ohne Spuren"-Modus — siehe [eigener Abschnitt weiter unten](#kiosk-modus-ohne-spuren-viewkiosk) |

Beispiel: `https://majort0m0.github.io/Markdown-Editor/?view=preview` öffnet die App direkt in der reinen Lesevorschau.

**Hinweis:** Wie bei `?simple=true` (siehe [Abschnitt 11](#11-designs-ansicht-und-fokus-modi)) wird die so gewählte Ansicht als neuer Stand gespeichert und bleibt auch bei einem späteren Öffnen ohne den Parameter bestehen — bis sie manuell oder über einen erneuten `?view=`-Link geändert wird.

### Ein Dokument automatisch öffnen: `?url=`

Öffnet eine Markdown-Datei automatisch von einer beliebigen Web-Adresse aus, sobald die App lädt — z. B. um einen direkten „Diese eine Notiz öffnen"-Link zu verschicken oder eine Vorlage von einer eigenen Website automatisch bereitzustellen:

```
https://majort0m0.github.io/Markdown-Editor/?url=https://beispiel.de/pfad/notiz.md
```

**Schritt für Schritt:**

1. Die `.md`-Datei muss über eine normale, direkt abrufbare Web-Adresse erreichbar sein (z. B. eine „raw"-Datei-Adresse bei GitHub oder ein eigener Webserver).
2. Diese Adresse hinter `?url=` an den App-Link anhängen.
3. Beim Öffnen des Links wird die Datei automatisch geladen und als neue, eigene Notiz geöffnet — der Dateiname aus der Adresse wird dabei als Tab-Name übernommen.
4. Wird derselbe Link später erneut geöffnet, erkennt die App anhand der bereits im Browser gespeicherten Notizen, dass diese Datei schon einmal importiert wurde, und öffnet stattdessen einfach den bestehenden Tab — es wird also nicht bei jedem Klick eine neue Kopie angelegt.

**Wichtige Einschränkung:** Das automatische Laden funktioniert nur, wenn der Server, auf dem die Datei liegt, Zugriffe von anderen Webseiten aus erlaubt (CORS-Header). Die meisten normalen Webserver tun das standardmäßig nicht — zuverlässig funktioniert es z. B. mit einer GitHub-„raw"-Datei-Adresse oder einem selbst dafür eingerichteten Server. Schlägt das Laden fehl (falsche Adresse, Datei nicht erreichbar, kein Zugriff erlaubt), erscheint eine entsprechende Fehlermeldung und die App startet stattdessen normal.

### Blank starten, ohne gespeicherte Notizen: `?localstorage=false`

Startet die App bewusst „leer", ohne die im Browser gespeicherten Notizen zu laden — praktisch für eine Vorführung, einen gemeinsam genutzten Rechner/Kiosk-Link oder einen sauberen Testlauf, bei dem die eigenen Notizen nicht in der Tableiste auftauchen sollen:

```
https://majort0m0.github.io/Markdown-Editor/?localstorage=false
```

- **Allein verwendet** (`?localstorage=false`) startet die App genau wie bei einem allerersten Besuch, mit der leeren „Willkommen"-Notiz — die eigenen gespeicherten Notizen werden dabei **nicht gelesen**, bleiben aber vollständig unangetastet im Browser gespeichert.
- **Zusammen mit `?url=`** (`?localstorage=false&url=https://beispiel.de/notiz.md`) wird ausschließlich die über `?url=` angegebene Notiz geöffnet — auch die „Willkommen"-Notiz erscheint in diesem Fall nicht.
- Eine automatische WebDAV-Synchronisierung beim Start wird in diesem Modus ebenfalls übersprungen (sie würde sonst die eigenen Notizen ohnehin gleich wieder in die „leere" Sitzung hineinsynchronisieren) — ein manueller Klick auf „🔄 Jetzt synchronisieren" funktioniert aber weiterhin normal.

**Wichtig zu wissen:** Dieser Modus ist nicht wie ein „Inkognito-Fenster", das nichts speichert — er blendet beim Start lediglich die vorhandenen Notizen aus. Wird während einer solchen Sitzung etwas geschrieben oder verändert, speichert die App das ganz normal wie immer; beim nächsten Öffnen der App **ohne** diesen Parameter erscheinen dann sowohl die ursprünglichen Notizen als auch alles, was währenddessen neu entstanden ist.

### Kiosk-Modus (ohne Spuren): `?view=kiosk`

Anders als `?localstorage=false` ist dieser Modus tatsächlich wie ein „Inkognito-Fenster": Die App startet leer im geteilten Editor/Vorschau-Ansicht (auch wenn zuvor der Simple Modus aktiv war — der wird für diese Sitzung deaktiviert), und **alles, was während der Sitzung geschrieben oder verändert wird, wird zu keinem Zeitpunkt in `localStorage` abgelegt** — nicht nur beim Start, sondern durchgehend:

```
https://majort0m0.github.io/Markdown-Editor/?view=kiosk
```

- Praktisch für einen wirklich öffentlichen Rechner (Bibliothek, Messestand, gemeinsam genutztes Tablet), auf dem nichts von dem, was jemand dort tippt, danach im Browser zurückbleiben soll.
- Ein Neuladen derselben `?view=kiosk`-Adresse startet immer wieder komplett leer — auch alles, was in der vorherigen Kiosk-Sitzung geschrieben wurde, ist weg. Ein späteres Öffnen der App **ohne** diesen Parameter zeigt unverändert die eigenen, „normal" gespeicherten Notizen, exakt wie vor der Kiosk-Sitzung.
- Wie bei `?localstorage=false` wird auch hier eine automatische WebDAV-Synchronisierung beim Start übersprungen; ein manueller Klick auf „🔄 Jetzt synchronisieren" funktioniert weiterhin normal — ist auf diesem Gerät bereits eine WebDAV-Verbindung eingerichtet, kann eine währenddessen laufende automatische Synchronisierung Änderungen trotzdem auf den Server übertragen (nur die lokale Speicherung im Browser ist betroffen).
- Lässt sich mit `?url=` kombinieren (`?view=kiosk&url=https://beispiel.de/notiz.md`), um die Sitzung direkt mit einer bestimmten Notiz zu starten, statt komplett leer.

### Simple Modus per Link erzwingen: `?simple=true` / `?simple=false`

Aktiviert bzw. deaktiviert den [Simple Modus](#11-designs-ansicht-und-fokus-modi) beim Öffnen, unabhängig davon, was zuletzt in diesem Browser eingestellt war — genau wie bei `?view=` bleibt die so gewählte Einstellung anschließend als neuer Stand gespeichert:

```
https://majort0m0.github.io/Markdown-Editor/?simple=true
https://majort0m0.github.io/Markdown-Editor/?simple=false
```

Praktisch z. B. für einen Lesezeichen-Link auf einem Tablet, der immer im reduzierten Simple Modus startet, oder umgekehrt einen Link, der ihn zuverlässig wieder ausschaltet.

## 19. Canvas-Modus (freie Notizfläche)

Der Canvas-Modus ist ein eigener Dokumenttyp (`.canvas`) für eine frei gestaltbare DIN-A4-Seite: statt eines einzelnen, linearen Dokuments lassen sich beliebig viele frei platzierbare, unabhängig voneinander bearbeitbare Notizzettel („Boxen") auf einer Fläche anordnen — z. B. für ein Moodboard, ein visuelles Arbeitsblatt oder eine freie Sammlung von Notizen, Bildern und Zeichnungen.

### Canvas erstellen

Über **✨ Neu** → „Canvas (Hochformat)" oder „Canvas (Querformat)", je nach gewünschter Seitenausrichtung. Es öffnet sich eine leere DIN-A4-Seite.

### Boxen erstellen, verschieben und bearbeiten

- **Box erstellen:** den „+"-Button oben rechts anklicken (aktiviert den Erstellen-Modus, der Mauszeiger wird zum Fadenkreuz), dann auf der Seite eine Box aufziehen. Der Erstellen-Modus schaltet sich danach automatisch wieder aus.
- **Box auswählen:** einmal auf eine Box klicken — sie bekommt einen Rahmen mit Anfassern an den Ecken sowie einen Löschen-Button (Papierkorb-Symbol) oben rechts.
- **Box verschieben/skalieren:** bei ausgewählter Box am Rand ziehen zum Verschieben, an einer Eckmarkierung ziehen zum Ändern der Größe.
- **Box bearbeiten:** eine bereits ausgewählte Box ein zweites Mal anklicken (oder direkt doppelklicken) öffnet sie zur Bearbeitung — mit vollständigem Quelltext-Editor und derselben Formatierungsleiste wie bei einem normalen Dokument. Innerhalb einer Box funktioniert alles genauso wie in einem gewöhnlichen Dokument: Formatierung, Bilder, Fotos, Zeichnungen, Piktogramme, Tabellen, Audio, Video, Web-Einbettungen.
- **Bearbeitung verlassen:** ausschließlich über den **Quelltext**-Button in der Kopfzeile — ein Klick daneben auf die Canvas-Fläche schließt die Box bewusst *nicht*, damit sich die Fläche bei geöffneter Box weiterhin mit der Maus verschieben lässt (siehe „Navigation" unten).

### Design und Zoom pro Box

Jede Box hat ihr eigenes **Design** (Dropdown in der Kopfzeile, sobald die Box geöffnet ist) — neue Boxen starten immer mit dem Design „Clean". Ebenso hat jede Box ihre eigene **Zoomstufe**: Die Zoom-Buttons in der Kopfzeile wirken sich bei geöffneter Box ausschließlich auf diese eine Box aus (Quelltext und Vorschau gemeinsam) — alle anderen Boxen behalten ihre eigene, unabhängig gespeicherte Zoomstufe. Neue Boxen starten bei 100 %; beim erneuten Öffnen einer Box wird ihre zuletzt eingestellte Zoomstufe exakt wiederhergestellt.

### Navigation: Verschieben und Zoomen der Fläche

Solange keine Box geöffnet ist, ersetzt eine kleine Übersichtskarte unten rechts (mit Pfeil-Buttons zum Verschieben) die normale Formatierungsleiste, und die Zoom-Buttons in der Kopfzeile steuern in diesem Zustand den Zoom der gesamten Fläche statt Editor/Vorschau. Die Fläche lässt sich außerdem direkt mit der Maus verschieben — durch Klicken und Ziehen auf einen leeren Bereich der Canvas, auch während eine Box gerade geöffnet ist.

### Hintergrundfarbe

Ist keine Box geöffnet, erscheint an der Stelle der Design-Auswahl in der Kopfzeile stattdessen ein Farbwähler — damit lässt sich der Canvas selbst (die Seite, nicht eine einzelne Box) mit einer eigenen Hintergrundfarbe versehen.

### Vorlesemodus im Canvas

Ein eigener 🔊-Button oben links über der Canvas-Fläche liest alle Boxen der Reihe nach vor — von oben links beginnend, zeilenweise in Leserichtung. Die gerade vorgelesene Box wird dabei automatisch in den sichtbaren Bereich verschoben und wie im normalen [Vorlesemodus](#9-vorlesemodus) Wort für Wort hervorgehoben; eingebettete Bilder, Zeichnungen, Audiodateien und Web-Einbettungen werden dabei genauso behandelt. Da Boxen frei auf der Fläche platziert sind, gibt es keine hundertprozentig eindeutige Leserichtung — bei unregelmäßig angeordneten oder überlappenden Boxen kann die tatsächliche Reihenfolge daher gelegentlich von der Erwartung abweichen.

### Präsentationsmodus im Canvas

Der [Präsentationsmodus](#10-präsentationen-erstellen) lässt sich auch auf ein Canvas-Dokument anwenden: jede Box wird dabei zu einer eigenen Folie, in derselben Leserichtung wie der Vorlesemodus (siehe oben) und jeweils mit dem eigenen Design der Box. Enthält eine Box selbst Folientrennlinien (`---`), wird sie zusätzlich in mehrere aufeinanderfolgende Folien aufgeteilt statt nur eine einzige zu ergeben.

### Export

**Als eigenständige HTML-Datei exportieren** (siehe [Abschnitt 14](#14-export-und-teilen)) erzeugt bei einem Canvas-Dokument eine eigenständige Seite mit exakt demselben Layout (Boxen an derselben Position und Größe) und einem eigenen, funktionierenden Vorlesen-Button — auch außerhalb dieser App nutzbar.

**🖨️ Drucken / Als PDF speichern** druckt die Canvas-Seite passend auf ein DIN-A4-Blatt (Hoch- oder Querformat, je nach Seitenausrichtung) — unabhängig davon, wie weit die Fläche gerade im Browserfenster gezoomt oder verschoben ist.

**📋 Formatierte Notiz in die Zwischenablage kopieren** reiht bei einem Canvas-Dokument alle Boxen in Leserichtung aneinander (durch eine Trennlinie getrennt, jede im eigenen Design), statt — wie sonst — nur den Inhalt eines einzelnen Dokuments zu kopieren.

---

Fragen, Ideen oder Fehler gefunden? [github.com/Majort0m0/Markdown-Editor](https://github.com/Majort0m0/Markdown-Editor)
