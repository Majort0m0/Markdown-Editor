# Markdown Studio Pro – Ausführliche Anleitung

Diese Anleitung beschreibt alle Funktionen von Markdown Studio Pro (Version 4.0) Schritt für Schritt. Für einen schnellen Funktionsüberblick siehe die [README](./README.md).

Markdown Studio Pro läuft komplett im Browser, ohne Installation und ohne Server — alle Dokumente werden lokal auf deinem Gerät gespeichert (bzw. optional über WebDAV mit anderen Geräten synchronisiert, siehe [Abschnitt 17](#17-webdav-synchronisierung-zwischen-mehreren-geräten)).

## Inhaltsverzeichnis

1. [Erste Schritte](#1-erste-schritte)
2. [Dokumente und Tabs](#2-dokumente-und-tabs)
3. [In der Vorschau schreiben (WYSIWYG)](#3-in-der-vorschau-schreiben-wysiwyg)
4. [Text formatieren](#4-text-formatieren)
5. [Suchen und Ersetzen](#5-suchen-und-ersetzen)
6. [Tabellen und CSV](#6-tabellen-und-csv)
7. [Bilder, Fotos, Zeichnungen und Piktogramme einfügen](#7-bilder-fotos-zeichnungen-und-piktogramme-einfügen)
8. [PDF-Dateien als Arbeitsblatt bearbeiten](#8-pdf-dateien-als-arbeitsblatt-bearbeiten)
9. [Audio, Video und Web-Einbettungen](#9-audio-video-und-web-einbettungen)
10. [Liedblätter mit Akkorden (ChordPro)](#10-liedblätter-mit-akkorden-chordpro)
11. [Canvas-Modus (freie Notizfläche)](#11-canvas-modus-freie-notizfläche)
12. [Betriebsarten: Fokus, Simple, Voll](#12-betriebsarten-fokus-simple-voll)
13. [Designs, Ansicht und Fokus-Modi](#13-designs-ansicht-und-fokus-modi)
14. [Inhaltsverzeichnis-Panel in der Vorschau](#14-inhaltsverzeichnis-panel-in-der-vorschau)
15. [Vorlesemodus](#15-vorlesemodus)
16. [Präsentationen erstellen](#16-präsentationen-erstellen)
17. [WebDAV-Synchronisierung zwischen mehreren Geräten](#17-webdav-synchronisierung-zwischen-mehreren-geräten)
18. [Export und Teilen](#18-export-und-teilen)
19. [Tastenkürzel](#19-tastenkürzel)
20. [Direktlinks mit URL-Parametern](#20-direktlinks-mit-url-parametern)
21. [Speicherplatz und Datenschutz](#21-speicherplatz-und-datenschutz)
22. [Tipps und häufige Fragen](#22-tipps-und-häufige-fragen)

## 1. Erste Schritte

Markdown Studio lässt sich auf zwei Arten nutzen:

- **Im Browser:** [majort0m0.github.io/Markdown-Editor](https://majort0m0.github.io/Markdown-Editor/) öffnen — fertig.
- **Lokal/offline:** die Datei `Markdown-Editor.html` herunterladen und per Doppelklick im Browser öffnen. Alle Bibliotheken (inklusive Zeichen-Editor und PDF-Verarbeitung) sind bereits eingebettet, es wird keine Internetverbindung benötigt.

Auf einem Smartphone oder Tablet lässt sich die Web-Version über „Zum Home-Bildschirm hinzufügen" (iOS) installieren und startet dann wie eine eigenständige App ohne Browser-Kopfzeile.

**Die Oberfläche im Überblick:**

- **Notizleiste-Knopf** (oben links) — öffnet die Liste aller offenen Notizen, wahlweise als Overlay oder angepinnt als feste Seitenspalte
- **Burger-Menü ☰** (oben rechts) — alle Aktionen an einer Stelle: Betriebsart, Ansicht, Inhaltsbreite, Datei-Aktionen, Suchen, Exporte, WebDAV, Design, Tastenkürzel-Hilfe und „Über"
- **Schreibfläche** — je nach gewählter Ansicht die Vorschau (in der direkt geschrieben wird), der Quelltext oder beides nebeneinander mit ziehbarem Trenner
- **Formatierungsleiste** — nur in den Betriebsarten Simple und Voll sichtbar (siehe [Abschnitt 12](#12-betriebsarten-fokus-simple-voll))
- **Fußleiste** — Wörter/Zeichen der aktuellen Notiz, Speicherplatzanzeige, sowie Zoom, Vollbild und Präsentationsmodus

Beim ersten Start ist eine „Willkommen"-Notiz mit einer Funktionsübersicht bereits geöffnet. Standardmäßig startet die App im **Fokus-Modus** und zeigt nur die Vorschau — schreib einfach direkt hinein (siehe [Abschnitt 3](#3-in-der-vorschau-schreiben-wysiwyg)).

## 2. Dokumente und Tabs

### Neues Dokument erstellen

- **✨ Neu** (Kopfzeile) öffnet die Vorlagenauswahl mit 14 Vorlagen: Blanko, Meeting-Notizen, README, Projektplan, Checkliste, Tagebuch-Eintrag, Rezept, Lebenslauf, Blogartikel, Brief, Präsentation, Fortbildungsplanung, Stundenplan und eine HTML-„Hello World"-Vorlage. Eine Vorlage anklicken erstellt sofort einen neuen Tab mit dem passenden Grundgerüst.
- **„+"** in der Tableiste erstellt direkt ein leeres Dokument, ohne die Vorlagenauswahl zu öffnen — der schnelle Weg für „einfach eine neue Notiz".

Ein unbenanntes Dokument übernimmt automatisch die erste `#`-Überschrift als Dateiname, solange es nicht manuell umbenannt oder gespeichert wurde.

### Öffnen und Speichern

- **📂 Öffnen** lädt eine oder mehrere Dateien von der Festplatte (Markdown, TXT, CSV, JSON, HTML, PDF — siehe [Abschnitt 8](#8-pdf-dateien-als-arbeitsblatt-bearbeiten) für PDFs).
- **💾 Speichern** (auch `Strg`/`Cmd`+`S`) fragt immer nach einem Speicherort — genau wie „Speichern unter" —, statt ohne Rückfrage in eine zuvor gewählte Datei zu schreiben: In Chrome/Edge öffnet sich der native Ordnerauswahl-Dialog, standardmäßig im zuletzt für genau diese Notiz verwendeten Ordner auf diesem Gerät. In Browsern ohne diese Funktion (z. B. Firefox, Safari, die meisten mobilen Browser) landet die Datei automatisch im Download-Ordner — ein Hinweis erklärt das jedes Mal, samt Tipp, wie sich in den Browser-Einstellungen doch noch eine Ordnerauswahl aktivieren lässt.
- Eine Datei lässt sich auch per **Drag & Drop** direkt ins Browserfenster ziehen, um sie zu öffnen.
- Alle offenen Tabs werden zusätzlich automatisch im Browser (lokal) gespeichert — beim nächsten Öffnen der App sind alle Notizen unverändert wieder da, auch ohne sie manuell gespeichert zu haben.

### Tabs umbenennen und Format wechseln

Doppelklick auf einen Tab öffnet ein Umbenennen-Feld mit einem Format-Dropdown (`.md` / `.txt` / `.csv` / `.json` / `.html`). So lässt sich ein Dokument gezielt in ein anderes Dateiformat konvertieren, z. B. um eine Tabelle als CSV weiterzuverarbeiten. `Enter` bestätigt, `Escape` bricht ab. Bei einem Canvas-Dokument (siehe [Abschnitt 11](#11-canvas-modus-freie-notizfläche)) zeigt das Umbenennen-Feld kein Format-Dropdown — eine Canvas-Fläche ist kein Text-Format und lässt sich nicht in eines der anderen umwandeln, nur der Name lässt sich ändern.

### Tabs neu anordnen

Ein Tab lässt sich per Ziehen (Maus gedrückt halten und bewegen) an eine andere Stelle in der Tableiste verschieben — die neue Reihenfolge bleibt wie gewohnt geräteweit gespeichert.

## 3. In der Vorschau schreiben (WYSIWYG)

Der wichtigste Unterschied zu früheren Versionen: **die Vorschau ist selbst das Eingabefeld**. Du klickst hinein und schreibst direkt im fertigen Layout — Überschriften sind groß, Fettes ist fett, Listen haben Aufzählungszeichen. Gespeichert wird trotzdem ganz normales Markdown, das sich unverändert weitergeben lässt.

Der klassische Quelltext-Editor bleibt vollständig erhalten. Über das Burger-Menü ☰ → **Ansicht** lässt sich jederzeit zwischen **Vorschau**, **Quelltext** und **Split** (beides nebeneinander) wechseln. Beide Ansichten bleiben dabei zeichengenau synchron.

### Live-Formatierung

Formatierung entsteht beim Tippen:

- `**` tippen erzeugt sofort ein Paar (`****`) mit dem Cursor in der Mitte — was du dazwischen schreibst, wird live fett dargestellt. Beim Verlassen (Pfeiltaste nach rechts oder Klick woanders hin) verschwinden die Sternchen und nur der fette Text bleibt sichtbar.
- Genauso funktionieren `~~` (durchgestrichen) und `` ` `` (Code).
- Wer die Zeichen lieber selbst komplett tippt (`**Wort**`), bekommt dasselbe Ergebnis.

### Zeilenkürzel

Am Zeilenanfang getippt, wandelt sich die Zeile sofort um:

| Eingabe | Ergebnis |
| --- | --- |
| `# ` bis `###### ` | Überschrift 1–6 |
| `- ` oder `* ` | Aufzählung |
| `1. ` | Nummerierte Liste |
| `- [ ] ` | Checkbox |
| `> ` | Zitat |
| `---` | Trennlinie |

### Slash-Menü

`/` tippen öffnet ein Menü mit allen Blocktypen — Überschriften, Listen, Checkbox, Zitat, Code-Block, Tabelle, Trennlinie, Bild, Zeichnung und mehr. Weitertippen filtert die Liste, Pfeiltasten wählen aus, `Enter` fügt ein, `Escape` schließt.

### Block-Anfasser

Fährst du mit der Maus über einen Absatz, erscheint links daneben ein kleines Griffsymbol:

- **Linksklick** öffnet „Umwandeln in" — Absatz, Überschrift 1–6, Aufzählung, Nummerierte Liste, Checkbox, Zitat oder Code-Block. Der aktuelle Typ ist mit einem Haken markiert; ein erneuter Klick darauf wandelt zurück in einen normalen Absatz.
- **Ziehen** verschiebt den Absatz oder Listenpunkt an eine andere Stelle.
- **Rechtsklick** öffnet ein Menü mit Duplizieren, Löschen, Nach oben/unten verschieben und „Zeile darüber/darunter einfügen".

### Auswahl-Werkzeugleiste

Markierst du Text in der Vorschau, erscheint direkt darüber eine kleine Leiste mit Fett, Kursiv, Durchgestrichen, Code, einer Überschriftenauswahl und Textfarbe — praktisch, wenn die große Werkzeugleiste (z. B. im Fokus-Modus) gar nicht eingeblendet ist.

### Tastatur

Die Vorschau verhält sich bei Tastatureingaben wie ein normaler Texteditor:

- **Enter** erzeugt einen neuen Absatz — wie in jedem Textprogramm. In einer Liste setzt Enter die Liste fort (auch dann, wenn der Punkt mehrere Zeilen hat); auf einem leeren Listenpunkt verlässt Enter die Liste. Hinter einer Einbettung (Bild, Audio, Zeichnung) entsteht ebenfalls sofort ein neuer Absatz.
- **`Umschalt`+`Enter`** erzeugt einen **bedingten Absatz** — einen Zeilenumbruch *innerhalb* desselben Absatzes bzw. Listenpunkts. Im Quelltext entspricht das einem einfachen Zeilenumbruch statt einer Leerzeile.
- **Rücktaste** am Absatzanfang verbindet den Absatz mit dem vorherigen, **Entf** am Absatzende mit dem folgenden — genau wie im Quelltext.
- **Tabulator** rückt ein bzw. verschachtelt einen Listenpunkt, `Umschalt`+`Tab` rückt wieder aus.
- **Rückgängig/Wiederherstellen** (`Strg`/`Cmd`+`Z` bzw. `+Umschalt+Z`) funktioniert in beiden Ansichten.
- **`Alt`/`Option`+Rücktaste** löscht das Wort links vom Cursor.

Auf iPhone und iPad funktionieren zusätzlich die Textwerkzeuge des Systems: Autokorrektur, die Wortvorschlagsleiste und der Doppel-Leerzeichen-Punkt.

## 4. Text formatieren

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

**Formatierte Inhalte einfügen:** wird Text aus einer anderen Anwendung eingefügt (z. B. aus Word, Google Docs oder einer Webseite) und enthält dieser echte Formatierung, wandelt Markdown Studio sie automatisch in passendes Markdown um — Überschriften, Absätze, Zeilenumbrüche, Listen (inkl. Verschachtelung/Einrückung), Aufgabenlisten-Checkboxen, fett/kursiv/durchgestrichen, Links und Tabellen bleiben dabei erhalten. Enthält der eingefügte Text keine echte Formatierung (z. B. Code aus einem Editor oder bereits vorhandener Markdown-Quelltext aus einer anderen Notiz), wird ganz normal unverändert als reiner Text eingefügt — nichts wird ungefragt „markdown-isiert".

Enthält der eingefügte Inhalt Bilder, die auf der Quell-Webseite nur verlinkt sind (nicht als Datei kopiert), versucht die App zusätzlich, jedes Bild direkt herunterzuladen und wie ein normal eingefügtes Bild einzubetten (verkleinert, als Base64 im Dokument gespeichert) — praktisch, damit die Notiz auch offline und unabhängig von der Quellseite vollständig bleibt. Das klappt nur bei Quellen, die das technisch erlauben (viele, aber nicht alle Webseiten); wo es nicht klappt, bleibt automatisch der externe Link erhalten statt eines Fehlers.

### Textfarbe und Hintergrundfarbe

Zwei weitere Buttons in der Formatierungsleiste (A mit farbigem Balken, Textmarker-Symbol) öffnen jeweils eine kleine Farbpalette:

- **Farbe auswählen** — auf einen der zehn Farbkästchen klicken, wendet sie sofort auf die aktuelle Auswahl an (oder fügt bei leerer Auswahl eine leere Farbmarkierung an der Cursorposition ein, bereit zum Eintippen).
- **Eigene Farbe** — das „+"-Kästchen öffnet den systemeigenen Farbwähler für beliebige Farbtöne.
- **✕ Entfernen** — hebt eine vorhandene Farbmarkierung an der aktuellen Auswahl wieder auf.
- Ein erneuter Klick auf dieselbe Farbe hebt sie wieder auf (Toggle-Verhalten wie bei Fett/Kursiv).

Die beiden Paletten sind bewusst unterschiedlich: Bei der **Textfarbe** stehen kräftige, gut lesbare Farbtöne zur Auswahl; bei der **Hintergrundfarbe** sind es standardmäßig helle Pastelltöne, damit der Text darüber lesbar bleibt (ähnlich einem Textmarker).

**Hintergrundfarbe in Tabellenzellen** füllt dabei die ganze Zelle aus (wie eine Zellfüllung in Excel), nicht nur den markierten Text — dazu einfach mit dem Cursor in der gewünschten Zelle stehen und eine Hintergrundfarbe wählen, unabhängig davon, was gerade markiert ist.

## 5. Suchen und Ersetzen

**🔍 Suchen** (auch `Strg`/`Cmd`+`F`) öffnet die Suchleiste mit Treffer-Zähler („3 von 12") und `‹`/`›`-Navigation zwischen allen Fundstellen. Über die Checkbox „Ersetzen" lässt sich zusätzlich ein Ersetzen-Feld einblenden, mit „Ersetzen" (nur aktueller Treffer) und „Alle ersetzen".

## 6. Tabellen und CSV

Eine Tabelle über den **Tabelle**-Button in der Formatierungsleiste einfügen (leeres Grundgerüst) oder direkt Markdown-Syntax tippen. Sobald der Cursor innerhalb einer Tabelle steht, erscheint eine eigene Werkzeugleiste darüber:

- Zeile/Spalte davor oder danach einfügen
- Zeile/Spalte verschieben (nach oben/unten bzw. links/rechts)
- Zeile/Spalte löschen
- Nach der Spalte unter dem Cursor sortieren — erneuter Klick kehrt die Sortierrichtung um

**In der Vorschau:** ein Klick auf eine Tabellenzelle springt direkt zur passenden Stelle im Quelltext. Durch mehrere Zellen ziehen markiert eine Zeile, Spalte oder einen beliebigen Zellblock — das lässt sich direkt weiterverwenden:

- **`Strg`/`Cmd`+`C`** kopiert die Auswahl als fertige Tabelle in die Zwischenablage (z. B. zum Einfügen in Excel). Wird eine so kopierte Auswahl in eine **CSV-Notiz** eingefügt, wandelt die App sie automatisch ins CSV-Format um (mit dem Trennzeichen dieser Notiz); umgekehrt wird eine in eine Markdown-Notiz eingefügte Tabelle (z. B. aus Excel oder Google Sheets kopiert) automatisch zur Markdown-Tabelle.
- **`Entf`/`Rücktaste`** leert alle markierten Zellen auf einmal.
- **Fett, Kursiv, Durchgestrichen** sowie **Text-/Hintergrundfarbe** aus der Formatierungsleiste wenden sich auf alle markierten Zellen gleichzeitig an, statt nur auf eine einzelne Auswahl im Quelltext — praktisch, um z. B. eine ganze Kopfzeile auf einmal fett zu setzen. Nur bei Markdown-Tabellen (CSV-Zellen können keine solche Formatierung darstellen). Das funktioniert auch für [Formelzellen](#formeln-in-tabellen) innerhalb der Auswahl — der berechnete Wert wird formatiert dargestellt und rechnet sich weiterhin automatisch neu, sobald sich eine Quellzelle ändert; die Formel selbst lässt sich weiterhin einzeln über ihre eigenen Overlay-Buttons bearbeiten oder einfrieren, wobei eine bestehende Formatierung beim Einfrieren erhalten bleibt.

**CSV-Dateien** werden automatisch als Tabelle dargestellt und lassen sich mit genau denselben Werkzeugen bearbeiten wie eine Markdown-Tabelle — das gesamte Dokument zählt dabei als eine Tabelle (kein Trennzeichen zwischen Kopf- und Datenzeilen nötig, im Gegensatz zu Markdown).

**Medien in Tabellenzellen:** Wird ein Bild, Foto, eine Zeichnung, ein Piktogramm oder eine Sprachaufnahme eingefügt, während der Cursor in einer Tabellenzelle (oder in einer CSV-Datei) steht, lässt die App die sonst übliche Leerzeile danach weg — so bleibt die Tabellenstruktur erhalten, statt durch zusätzliche Zeilenumbrüche zu zerbrechen.

### Formeln in Tabellen

Markdown-Tabellenzellen können, ähnlich wie in Excel, Formeln enthalten, die andere Zellen derselben Tabelle automatisch verrechnen — nur bei echten Markdown-Tabellen, nicht bei CSV-Dateien.

**Formel starten:**

1. Mit dem Cursor in die Zielzelle klicken (die Zelle, in der später das Ergebnis stehen soll).
2. `=` eintippen — oder das **Σ-Symbol** ganz rechts in der Tabellen-Werkzeugleiste anklicken. Die Tabelle wechselt jetzt in den Auswahlmodus: alle Zellen werden in der Vorschau anklickbar, und an der Zielzelle erscheint ein rundes „="-Symbol.
3. Eine Zelle in der Vorschau **anklicken**, um ihre Adresse (z. B. `A1`) in die Formel einzufügen — oder über mehrere Zellen **ziehen**, um eine ganze Zeile, Spalte oder einen Zellblock als Bereich (z. B. `A1:A5`) einzufügen. Bereiche werden automatisch aufsummiert.
4. Zwischen den Zellen einen Operator eintippen (`+`, `-`, `*`, `/`) und mit weiteren Klicks fortfahren, z. B. `A1+A2*B3`. Feste Zahlen (z. B. ein Steuersatz `*1.19`) lassen sich ebenfalls direkt eintippen.
5. Mit `Enter` oder einem Klick auf das runde „="-Symbol übernehmen.

Die Zielzelle bekommt einen **orangenen Rahmen** und zeigt das berechnete Ergebnis. Ändert sich später eine der verwendeten Quellzellen, rechnet sich das Ergebnis beim nächsten Tippen automatisch neu — auch über mehrere Ebenen hinweg: eine Summenzeile, die selbst wieder Formelzellen zusammenzählt (z. B. Zeilensummen aus „Anzahl × Preis", darunter eine Gesamtsumme über diese Zeilensummen), wird korrekt berechnet.

**Währung und Text:** Währungszeichen (`€`, `$`, `£`) werden für die Berechnung ignoriert und im Ergebnis an derselben Stelle (davor oder danach) wieder angehängt. Zellen mit Buchstaben oder anderen nicht-numerischen Zeichen werden bei der Berechnung übersprungen (wie leere Zellen).

**Formelzelle bearbeiten oder einfrieren:** Ein Klick auf eine bereits fertige, orange umrandete Formelzelle blendet zwei kleine Buttons ein:

- **✏️** — bringt die Formel als einfachen, direkt editierbaren Text zurück in den Quelltext (z. B. `=A1+A2`), markiert und bereit zum Überschreiben oder Weiter-Anklicken. `Enter` übernimmt die geänderte Formel wieder.
- **✕** — trägt den aktuell berechneten Wert fest als Zahl in die Zelle ein und entfernt die Formel dauerhaft; der orangene Rahmen verschwindet, im Quelltext steht danach nur noch der Zahlenwert.

Ein Klick außerhalb der Zelle oder `Esc` schließt die beiden Buttons wieder, ohne etwas zu ändern.

**Formel auf Nachbarzellen ausfüllen (Ausfüllkästchen):** Jede Formelzelle hat unten rechts an ihrem orangenen Rahmen ein kleines Quadrat — genau wie das Ausfüllkästchen in Excel. Daran klicken und waagerecht oder senkrecht in Nachbarzellen ziehen kopiert die Formel dorthin, wobei sich Zeilen- bzw. Spaltenbezüge automatisch an die neue Position anpassen (`A1+A2` wird beim Ziehen um eine Spalte nach rechts zu `B1+B2`, beim Ziehen um eine Zeile nach unten zu `A2+A3`). Praktisch, um z. B. eine Formel für Zeilensummen einmal zu bauen und dann für alle weiteren Zeilen einer Tabelle zu übernehmen, ohne sie jedes Mal neu zusammenzuklicken.

## 7. Bilder, Fotos, Zeichnungen und Piktogramme einfügen

### Bilder einfügen

Drei Wege, ein Bild einzufügen:

1. **Copy-Paste** — ein Bild aus der Zwischenablage direkt mit `Strg`/`Cmd`+`V` in den Editor einfügen.
2. **Drag & Drop** — eine Bilddatei ins Editorfenster ziehen.
3. **🖼️ Bild einfügen** (Formatierungsleiste) — öffnet den Dateidialog.

In allen drei Fällen erscheint ein Dialog mit der Wahl zwischen „📉 Verkleinert einfügen" (empfohlen, kleinere Dateigröße), „🖼️ Original einfügen" und „🎨 Bearbeiten & einfügen" (siehe nächster Abschnitt). Das Bild wird nicht als riesiger Base64-Textblock in den sichtbaren Quelltext eingefügt, sondern als kurze Referenz (`![...](asset:...)`) — die eigentlichen Bilddaten werden separat verwaltet, damit der Quelltext übersichtlich bleibt.

### Bilder bearbeiten (Helligkeit, Kontrast, Effekte)

Ein eingebauter Bildeditor erlaubt einfache Anpassungen, ganz ohne externe Software:

- **✂️ Zuschneiden** — öffnet einen eigenen Zuschneide-Schritt mit einem frei verschieb- und größenveränderbaren Auswahlrahmen (per Maus oder Finger); „✓ Zuschneiden anwenden" übernimmt den Ausschnitt, „✕ Abbrechen" kehrt unverändert zurück.
- **Schieberegler** für Helligkeit, Kontrast und Sättigung, mit sofortiger Live-Vorschau.
- **Effekte** — ein Klick genügt: Schwarz-Weiß, Sepia, Vintage, Lomo, Crossprozess, Sonnenaufgang, Schärfen, Vignette. Effekte, Schieberegler und Zuschnitt lassen sich beliebig kombinieren (z. B. erst zuschneiden, dann „Vintage" anklicken, danach die Helligkeit noch etwas erhöhen).
- **↺ Zurücksetzen** verwirft alle Änderungen und stellt das Originalbild wieder her; „✓ Übernehmen" speichert das Ergebnis.

Zwei Wege dorthin:

1. **Beim Einfügen eines neuen Bildes** — „🎨 Bearbeiten & einfügen" im Einfüge-Dialog (siehe oben) öffnet den Editor, bevor das Bild überhaupt im Dokument landet.
2. **Nachträglich, für ein bereits eingefügtes Bild** — beim Überfahren eines Bildes in der Vorschau mit der Maus erscheint oben rechts ein „🎨 Bearbeiten"-Button (bei Zeichnungen erscheint stattdessen der Zeichnungs-Editor, siehe unten). Die Änderung wird direkt im vorhandenen Bild gespeichert — der Verweis im Quelltext bleibt unverändert, nur das Bild dahinter ändert sich.

Nicht verfügbar für Bilder, die nur als externer Link eingefügt wurden (kein Bild im Dokument, das bearbeitet und gespeichert werden könnte).

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

Jedes eingefügte Bild/Foto/jede Zeichnung/jedes Piktogramm bekommt automatisch einen sprechfreundlichen Standard-Alt-Text („Das ist ein Bild." / „Das ist ein Foto." / „Das ist eine Zeichnung." / „Das ist ein Piktogramm."), der z. B. im [Vorlesemodus](#15-vorlesemodus) vorgelesen wird. Beim Überfahren eines Bildes in der Vorschau erscheint unten rechts ein „🏷️ Alt-Text"-Button — er markiert den Alt-Text direkt im Quelltext zum Überschreiben.

### Bildgröße und Rahmen anpassen

Jedes Bild — egal ob eingefügtes Foto, Zeichnung, Piktogramm oder verlinktes Bild — lässt sich verkleinern und mit einem farbigen Rahmen versehen, ohne die Bilddatei selbst zu verändern:

1. Mit der Maus über das Bild in der Vorschau fahren — unten links erscheint ein „📐 Größe"-Button (neben dem „🏷️ Alt-Text"-Button in der gegenüberliegenden Ecke).
2. Ein Klick öffnet ein kleines Fenster mit:
   - **Größe** — Schieberegler von 25 % bis 100 % der verfügbaren Breite.
   - **Rahmen anzeigen** — Checkbox; sobald aktiviert, erscheinen drei weitere Regler: **Farbe** (Farbwähler), **Dicke** (1–10 Pixel) und **Ecken** (Eckenradius, 0–40 Pixel, für abgerundete Ecken).
3. Jede Änderung wirkt sich sofort auf die Vorschau aus — kein „Übernehmen"-Klick nötig.

Die Einstellung wird direkt im Bildverweis im Quelltext gespeichert (unsichtbar als kleiner Zusatz an der Bildadresse) und bleibt beim Speichern, erneuten Öffnen und über WebDAV-Synchronisierung erhalten — genau wie bei jedem anderen Bild. Ein unverändertes Bild (100 % Breite, kein Rahmen) bekommt keinen solchen Zusatz und sieht im Quelltext exakt so aus wie bisher.

## 8. PDF-Dateien als Arbeitsblatt bearbeiten

Eine sehr nützliche Funktion für Arbeitsblätter, Formulare oder gescannte Dokumente: eine PDF-Datei öffnen und einzelne Seiten direkt beschriften.

**Schritt für Schritt:**

1. Eine PDF-Datei über **📂 Öffnen** auswählen oder direkt ins Fenster ziehen — der Dialog „📄 PDF öffnen" erscheint.
2. Auswählen, welche Seiten geladen werden sollen: „Nur die erste Seite", „Alle Seiten" oder „Bestimmte Seiten" (z. B. `1-3,5`).
3. **📥 Öffnen** klicken. Es wird eine neue, eigene Notiz erstellt; jede gewählte Seite landet dort als eigener Abschnitt („## Seite 1", „## Seite 2", …) mit dem Seitenbild direkt darunter.
4. Eine Seite anklicken (bzw. „✏️ Bearbeiten" beim Überfahren) öffnet sie im Zeichen-Editor — dort lässt sich direkt auf dem Arbeitsblatt schreiben, markieren oder zeichnen, genau wie bei einer normalen Zeichnung (siehe [Abschnitt 7](#7-bilder-fotos-zeichnungen-und-piktogramme-einfügen)). Beim ersten Öffnen wird die Seite automatisch passend positioniert und skaliert.
5. **💾 Speichern** im Zeichen-Editor sichert die Beschriftung in genau dieser Seite.

**Hinweis bei großen/mehrseitigen PDFs:** Da jede Seite als Bild eingebettet wird, kann das Speichern einer sehr großen, mit vielen Anmerkungen versehenen Seite spürbar länger dauern — die App wartet in diesem Fall bis zu 30 Sekunden, bevor sie einen Fehler meldet; ein erneuter Klick auf „Speichern" hilft, falls es doch einmal zu einer Fehlermeldung kommt. Bei sehr vielen/großen importierten Seiten weist die App zusätzlich per Hinweis auf hohen Speicherbedarf hin und empfiehlt, die Notiz per WebDAV zu sichern (siehe [Abschnitt 17](#17-webdav-synchronisierung-zwischen-mehreren-geräten) und [Abschnitt 21](#21-speicherplatz-und-datenschutz)).

## 9. Audio, Video und Web-Einbettungen

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
| `title` | Alt-Text-Gegenstück fürs Einbetten — wird im [Vorlesemodus](#15-vorlesemodus) vorgelesen |
| `allowfullscreen` / `allow="fullscreen"` | erlaubt der eingebetteten Seite, in den Vollbildmodus zu wechseln |

Der voreingestellte `title`-Text „Das ist eine Einbettung." lässt sich wie jeder andere Text direkt im Quelltext überschreiben.

## 10. Liedblätter mit Akkorden (ChordPro)

Dateien mit den Endungen `.pro`, `.chopro`, `.cho`, `.chordpro` und `.crd` werden als **Liedblatt** geöffnet, nicht als Markdown. Das ist das ChordPro-Format: Akkorde stehen in eckigen Klammern direkt vor der Silbe, über der sie erklingen, Angaben zum Lied in geschweiften Klammern.

```
{title: Amazing Grace}
{artist: Traditional}
{key: G}

A[G]mazing grace, how [G7]sweet the [C]sound
That [G]saved a wretch like [D7]me
```

In der Vorschau stehen die Akkorde als kleine Kästchen über der richtigen Silbe. Sobald ein Liedblatt geöffnet ist, erscheint dafür eine eigene Symbolleiste.

> **Auf iPhone und iPad** erkennt der Dateidialog diese Endungen nicht und zeigt sie ausgegraut. Das ist eine Eigenheit von iOS, die sich nicht umgehen lässt, wenn man den Dialog überhaupt einschränkt — deshalb schaltet die App die Einschränkung dort ganz ab, und die Dateien lassen sich normal auswählen. Ziehen und Ablegen funktioniert ohnehin immer.

### Die Symbolleiste des Liedblatts

| Feld | Wozu |
| --- | --- |
| **Songbook** | Öffnet den Liedindex mit Suche und Setlisten (siehe unten) |
| **Tonart − G +** | Transponiert das ganze Blatt um einen Halbton und schreibt `{key}` mit |
| **Kapodaster-Symbol** | Tonartvorschlag: bei welchem Capo wird es am leichtesten greifbar? |
| **Capo − 0 +** | Setzt `{capo}`. Ändert nur die angezeigten Griffe, nicht den Klang |
| **Ansicht** | Schaltet zwischen *Alles*, *Text* und *Akkorde* durch |
| **Notation B/H** | Schreibt die Akkorde auf deutsche (H) oder internationale (B) Schreibweise um |
| **Griffbild-Symbol** | Blendet die Griffbilder aller vorkommenden Akkorde ein |
| **Metronom** | Öffnet das schwebende Metronom |
| **Stimmgabel** | Öffnet das Stimmgerät |
| **{ } und [ ]** | Nur bei offenem Quelltext: fügt Direktiven bzw. Akkorde ein |

### Transponieren und Kapodaster — zwei verschiedene Dinge

**Transponieren** schreibt den Quelltext um: das Lied klingt danach wirklich anders. Es ist eine gewöhnliche Änderung und mit `Strg`/`Cmd`+`Z` zurückzunehmen.

**Der Kapodaster** ändert nur die Anzeige. Ein Capo im 3. Bund heißt: du greifst ein G und es klingt ein B. Angezeigt werden deshalb die **Griffe**, im Kopfbereich steht „3. Bund (Griffe in E)". Der Quelltext bleibt unangetastet, und ein Klick auf einen Akkord spielt weiterhin den *klingenden* Akkord — der Tooltip nennt dann beides.

**Der Tonartvorschlag** rechnet für alle acht Kapodasterlagen aus, wie leicht die Griffe dort werden, und zeigt sie mit Balken und Prozentzahl. Ein Klick setzt den Capo.

**Steht keine Tonart im Blatt**, schätzt die App sie aus den vorkommenden Akkorden und zeigt sie zurückgenommen und gestrichelt an. Der Tooltip nennt die zweitwahrscheinlichste Tonart, ein Klick trägt sie als `{key}` ein.

### Die drei Ansichten

- **Alles** — Akkorde über dem Text, so wie das Blatt gedacht ist.
- **Text** — nur der Liedtext. Reine Akkordzeilen, Instrumentalteile und Tabulaturen fallen weg, damit keine großen Lücken entstehen.
- **Akkorde** — nur die Akkorde, ohne Text. Ergibt eine kompakte Akkordübersicht zum Üben.

Die Wahl wandert in den Druck und in den HTML-Export mit.

### Griffbilder

Das Griffbild-Symbol blendet über dem Liedtext eine Leiste mit allen vorkommenden Akkorden ein. Sie wird mitgedruckt und mitexportiert.

- **Klick auf den Akkordnamen** spielt den Akkord.
- **Klick auf das Griffbild** öffnet den Griffeditor.

Die Griffe kommen aus einer von Hand geprüften Tabelle. Was nicht darin steht, wird berechnet — meist, indem eine bekannte Form derselben Akkordart verschoben wird, so wie man es selbst tut. Bleibt ein Akkord ganz ohne Bild, steht sein **Name** unter der Leiste („ohne Griffbild: Cmajor7") und er ist im Quelltext orange gewellt unterstrichen. Das ist fast immer ein Schreibfehler und der Hinweis, wo nachzusehen ist.

**Eigenes Griffbild.** Im Editor tippst du in eine Zelle, um einen Punkt zu setzen oder zu löschen; die Reihe über dem Sattel schaltet die Saite zwischen leer (○) und gedämpft (✕), und die Lage lässt sich verschieben. Gespeichert wird es **im Liedblatt** als Standard-Direktive:

```
{define: G base-fret 1 frets 3 5 5 4 3 3}
```

Damit erscheint dein Griff auf jedem Gerät und bleibt auch in anderen ChordPro-Programmen lesbar. Ein eigenes Griffbild trägt einen kleinen Punkt hinter dem Namen; „Zurücksetzen" entfernt es wieder.

### Abschnitte

`{start_of_chorus}` … `{end_of_chorus}` und die Geschwister für Strophe (`{sov}`), Bridge (`{sob}`) und Tabulatur (`{sot}`) gliedern das Blatt. In der Vorschau bekommt jeder Abschnitt einen Balken an der Seite mit kurzen Querstrichen oben und unten: durchgezogen beim Refrain, gepunktet bei der Strophe, gestrichelt bei der Bridge. Der Refrain ist zusätzlich fett und leicht in der Akzentfarbe hinterlegt, **Strophen sind durchnummeriert** — die kleine Zahl steht am Anfang der Klammer.

### Metronom

Das Metronom schwebt über der Vorschau und bleibt dadurch auch im Vollbild und im Teleprompter erreichbar. Tempo und Taktart stehen als `{tempo}` und `{time}` im Lied und reisen mit ihm; Stil und Lautstärke sind Geräteeinstellungen.

Acht Stile — Klassisch, Pop, Rock, Blues, Funk, Jazz, Latin, Reggae — unterscheiden sich in Unterteilung, Betonung und Swing-Anteil. Das Tempo lässt sich auch **antippen**. Beim Start schrumpft die Anzeige auf den Knopf und das pulsierende Licht zusammen, damit sie nicht stört. Solange das Metronom läuft, bleibt der Bildschirm wach.

### Stimmgerät

Zwei Betriebsarten in einem Feld:

- **Nach Gehör** — ein Klick auf eine Saite lässt sie erklingen, gestimmt wird nach Gefühl.
- **Chromatisch** — das Mikrofon hört zu, die erkannte Tonhöhe wird mit Abweichung in Cent angezeigt, dazu die Richtung.

Zwölf Stimmungen sind eingebaut: Standard, Drop D, Open D/G/E, DADGAD, Halbton tiefer, Bass mit vier und fünf Saiten und drei Ukulelen-Stimmungen. Das Mikrofon braucht eine sichere Verbindung — über `https` oder `localhost` geöffnet klappt es, über `file://` nicht.

### Fremde Akkordblätter importieren

Burger-Menü ☰ → **Akkordblatt importieren**. Der Dialog nimmt Text, in dem die Akkorde in einer eigenen Zeile über dem Liedtext stehen — die übliche Form auf Songtext-Seiten:

```
G          Am         C        G
Amazing grace, how sweet the sound
```

Die **Spalte**, in der ein Akkord steht, entscheidet, über welcher Silbe er landet. Überschriften wie „Chorus" oder „Verse 1" werden zu Abschnitten, „Intro" oder „Solo" zu Kommentaren, Tabulaturzeilen bleiben zeichengetreu. Titel und Interpret werden geraten und sind überschreibbar; **Tonart, Tempo und Capo** lassen sich vorgeben oder werden aus dem Kopf der Vorlage übernommen („Capo 3rd", „Key: Am", „96 bpm").

Steht im Original ein Capo, werden die Akkorde als **Griffe** gelesen: sie wandern um dessen Bünde nach oben und `{capo}` wird gesetzt, sodass die Anzeige wieder genau die Schreibweise der Vorlage zeigt. Der Schalter „Akkorde sind Griffe" schaltet das ab, falls eine Quelle schon klingend notiert.

Die Umwandlung steht live neben der Eingabe.

### Songbook, Setlisten und Vortragsmodus

Burger-Menü ☰ → **Songbook**. Du wählst einen Ordner mit Liedblättern, daraus entsteht ein durchsuchbarer Index mit Titel und Interpret, sortierbar und mit Livefilter.

- **Ein Lied öffnen** — Klick auf den Titel.
- **Setliste anlegen** — Name eingeben, anlegen; danach fügt das ⊕ neben einem Lied es der ausgewählten Liste hinzu. Einträge lassen sich mit ↑/↓ umsortieren.
- **Setliste starten** — der ▶-Knopf. Eine schmale Leiste nennt Titel und Position, zwei Pfeile blättern von Lied zu Lied, ohne dass du in den Index zurückmusst. Sie bleibt auch im Vollbild und im Teleprompter sichtbar. Ein einzelnes Lied aus der Liste öffnest du weiterhin per Klick auf den Titel, ohne den Vortragsmodus.

In Chromium-Browsern merkt sich die App den Ordner und findet ihn nach einem Neuladen wieder; sonst muss er einmal pro Sitzung neu gewählt werden. Fragt der Browser dabei erneut nach Erlaubnis, ist das normal. **Aktualisieren** durchsucht den Ordner erneut und fragt vorher nach; die Setlisten bleiben dabei erhalten.

**Auf mehreren Geräten.** Index und Setlisten reisen über die WebDAV-Synchronisierung mit (siehe [Abschnitt 17](#17-webdav-synchronisierung-zwischen-mehreren-geräten)): der jüngere Stand gewinnt als Ganzes. Damit steht eine am Rechner zusammengestellte Setliste auf dem iPad zur Verfügung, ohne den Ordner dort erneut einzulesen. Zum **Öffnen** eines Liedes braucht es den Ordner weiterhin auf dem jeweiligen Gerät — zum Stöbern und für die Setlisten nicht.

**Als HTML weitergeben.** Der Knopf **Als HTML** speichert den Index als eigenständige Seite: Suchfeld, Sortierung nach Titel oder Interpret und die Setlisten darunter. Eine einzelne Datei ohne Server und ohne diese App — gedacht für Abende, an denen sich die Mitspieler Lieder aussuchen sollen. Die Liedblätter selbst sind darin nicht enthalten, nur die Liste.

### Fußschalter

Burger-Menü ☰ → **Fußschalter**. Gedacht für einen kabellosen Fußschalter am Notenständer. Die Belegung wird **gelernt**, nicht vorgegeben: Aktion auswählen, Pedal treten, fertig.

Es gibt **zwei Wege**, und jede Aktion darf beide haben:

- **MIDI** — funktioniert mit jedem Controller, unabhängig davon, ob er Noten, Controller- oder Programmwechsel sendet.
- **Taste** — der Fußschalter wird am Gerät auf *Tastatur* umgestellt (beim M-Vave Chocolate und den meisten anderen möglich) und meldet sich dann als Bluetooth-Tastatur. Seine Anschläge kommen als ganz gewöhnliche Tastendrücke an.

Belegbar sind: Start/Stopp des Teleprompters, schneller, langsamer, Seite vor, Seite zurück, Teleprompter beenden, **nächstes und vorheriges Lied** der Setliste sowie **Metronom Start/Stopp**.

Beim Blättern bleibt jeweils die **letzte Zeile der vorherigen Seite** oben stehen (beim Zurückblättern die erste unten). Diese eine Zeile Überlappung ist der Anschluss, an dem man sich wiederfindet — sie richtet sich an den tatsächlichen Zeilen aus und stimmt deshalb bei jedem Zoom und auch dann, wenn Akkorde über den Silben stehen. Die letzten drei funktionieren auch ohne laufenden Teleprompter — das Metronomfeld klappt beim Start von selbst auf. Da das Metronom zu einem Liedblatt gehört, sagt ein kurzer Hinweis Bescheid, wenn gerade eine gewöhnliche Notiz offen ist.

**Wann welcher Weg?** MIDI im Browser gibt es nur über `https` oder `localhost` — direkt aus einer Datei geöffnet fehlt es. Vor allem aber: **auf iPhone und iPad kennt es kein Browser.** Dort benutzen alle Browser dieselbe Grundlage, und die kann kein Web-MIDI; daran ändert auch eine Web-Adresse nichts. Genau dafür gibt es die Tastenbelegung — sie braucht keine Erlaubnis und funktioniert überall, auch auf dem iPad und auch über eine https-Adresse.

Der Dialog sagt jeweils, woran es liegt, wenn MIDI nicht verfügbar ist.

Eine Taste **ohne Zusatztaste** (also z. B. einfach `F9`) löst nur aus, solange nicht gerade in einem Textfeld geschrieben wird — sonst tippte das Pedal mitten in den Liedtext. Beim Lesen, im Vollbild und im Teleprompter ist das immer der Fall. Mit `Strg`, `Alt` oder `Cmd` entsteht ohnehin kein Text, dort gilt sie überall.

### Fußschalter am iPad — was tatsächlich nötig ist

Ausprobiert mit dem **M-Vave Chocolate**; das Ergebnis gilt vermutlich für vergleichbare Geräte. Am iPad funktioniert der Fußschalter **nur**, wenn beide Bedingungen zugleich erfüllt sind:

1. Der Fußschalter steht am Gerät auf dem **Tasten-Profil** (nicht MIDI). MIDI im Browser gibt es auf iPhone und iPad überhaupt nicht.
2. Es ist **gleichzeitig eine Tastatur verbunden** — Magic Keyboard oder irgendeine andere Bluetooth-Tastatur.

Ohne verbundene Tastatur bleibt der Fußschalter wirkungslos, auch wenn er richtig gekoppelt ist und im Tasten-Profil steht. Der Grund liegt in iOS: erst mit einer erkannten Tastatur leitet das System die Anschläge an die Webseite weiter. **Von der Seite aus lässt sich daran nichts ändern** — ob eine Tastatur verbunden ist, weiß nur das Betriebssystem, und keine Webseite kommt daran heran. Eine zweite, dauerhaft gekoppelte Bluetooth-Tastatur im Notenständer-Aufbau genügt; sie muss nicht benutzt werden.

Am Rechner (Windows, macOS, Linux) gilt das nicht: dort reicht der Fußschalter allein, wahlweise über MIDI oder als Tastatur.

**Zur Fehlersuche** steht unten im Dialog die Zeile **„Zuletzt gedrückte Taste"**. Sie sagt, ob vom Pedal überhaupt etwas ankommt. Bleibt sie beim Treten leer, sendet der Fußschalter keine gewöhnliche Taste (manche Modelle schicken Mediensteuerbefehle wie Play/Pause, die eine Webseite nicht sieht) — oder es fehlt die verbundene Tastatur.

### Zwei Notizen nebeneinander

Burger-Menü ☰ → **Nebenspalte**: *Aus*, *Vorschau* oder *Quelltext*. Die Nebenspalte nimmt den Platz des Quelltextfensters ein und zeigt eine **zweite Notiz zum Lesen** — praktisch, um ein Liedblatt neben den Notizen zur Probe zu haben oder zwei Fassungen zu vergleichen.

In ihrer Kopfzeile wählst du die Notiz, schaltest zwischen Vorschau und Quelltext um, vergrößerst und verkleinerst mit **−** und **+**, tauschst mit ⇄ die Seiten und schließt sie mit ✕. Die Vergrößerung gilt nur für die Nebenspalte — die Zoomknöpfe der Fußzeile wirken weiter auf die Hauptspalte, beide lassen sich also unabhängig einstellen. 100 % ist dabei genau das, was ohne eigene Einstellung zu sehen wäre; der Wert bleibt erhalten und wirkt auf alle Formate, auch auf eine Tafel oder eine HTML-Notiz. Eine über die Spaltenbreite hinaus vergrößerte Tafel lässt sich seitlich verschieben. Die Breite ziehst du wie gewohnt am Trenner in der Mitte; in dieser Ansicht dient der runde Knopf darauf nur noch als Anfasser zum Verschieben (synchrones Scrollen ergibt zwischen zwei verschiedenen Notizen keinen Sinn).

Die Nebenspalte ist **schreibgeschützt**: geschrieben wird immer in der Hauptspalte. Ein farbiger Rahmen mit runden Ecken um ihr Inhaltsfeld zeigt das an — er bleibt beim Scrollen stehen.

Alle Dateiformate lassen sich dort anzeigen: Markdown, CSV (als Tabelle), JSON (hübsch formatiert), TXT, Liedblätter (mit Akkorden und der gewählten Ansicht) sowie HTML und Canvas.

Eine **Canvas-Tafel** erscheint als die Seite, die auch ihr HTML-Export erzeugt: die ganze DIN-A4-Fläche mit allen Kästen, passend verkleinert. Ihr JSON-Inhalt als Text wäre unbrauchbar, deshalb gilt das auch, wenn die Nebenspalte auf *Quelltext* steht.

Eine **HTML-Notiz** wird wie in der Hauptvorschau in einer abgeschotteten Umgebung dargestellt — sie darf ihre eigenen Skripte ausführen, kommt aber nicht an die App und ihre gespeicherten Daten heran. Auf *Quelltext* gestellt zeigt die Spalte stattdessen den HTML-Text. Auf schmalen Geräten ist sie abgeschaltet, dort stapelt die App die Bereiche ohnehin.

### Drucken und Exportieren

Ein Liedblatt wird gedruckt und exportiert wie jede andere Notiz — mit Griffbildern, gewählter Ansicht und Design. Für Papier gibt es zusätzlich **Zweispaltig drucken** im Burger-Menü, direkt vor „Drucken / PDF": Kopfblock und Griffleiste spannen dann über beide Spalten, und kein Abschnitt wird mitten in der Spalte zerrissen.

## 11. Canvas-Modus (freie Notizfläche)

Der Canvas-Modus ist ein eigener Dokumenttyp (`.canvas`) für eine frei gestaltbare DIN-A4-Seite: statt eines einzelnen, linearen Dokuments lassen sich beliebig viele frei platzierbare, unabhängig voneinander bearbeitbare Notizzettel („Boxen") auf einer Fläche anordnen — z. B. für ein Moodboard, ein visuelles Arbeitsblatt oder eine freie Sammlung von Notizen, Bildern und Zeichnungen.

### Canvas erstellen

Über **✨ Neu** → „Canvas (Hochformat)" oder „Canvas (Querformat)", je nach gewünschter Seitenausrichtung. Es öffnet sich eine leere DIN-A4-Seite.

### Boxen erstellen, verschieben und bearbeiten

- **Box erstellen:** den „+"-Button oben rechts anklicken (aktiviert den Erstellen-Modus, der Mauszeiger wird zum Fadenkreuz), dann auf der Seite eine Box aufziehen. Der Erstellen-Modus schaltet sich danach automatisch wieder aus.
- **Box auswählen:** einmal auf eine Box klicken — sie bekommt einen Rahmen mit Anfassern an den Ecken sowie einen Löschen-Button (Papierkorb-Symbol) oben rechts.
- **Box verschieben/skalieren:** bei ausgewählter Box am Rand ziehen zum Verschieben, an einer Eckmarkierung ziehen zum Ändern der Größe.
- **Box bearbeiten:** eine bereits ausgewählte Box ein zweites Mal anklicken (oder direkt doppelklicken) öffnet sie zur Bearbeitung — mit vollständigem Quelltext-Editor und derselben Formatierungsleiste wie bei einem normalen Dokument. Innerhalb einer Box funktioniert alles genauso wie in einem gewöhnlichen Dokument: Formatierung, Bilder, Fotos, Zeichnungen, Piktogramme, Tabellen, Audio, Video, Web-Einbettungen.
- **Bearbeitung verlassen:** ausschließlich über den **Quelltext**-Umschalter (Kopfzeile in der Betriebsart Voll, sonst Burger-Menü ☰ → Ansicht) — ein Klick daneben auf die Canvas-Fläche schließt die Box bewusst *nicht*, damit sich die Fläche bei geöffneter Box weiterhin mit der Maus verschieben lässt (siehe „Navigation" unten).

### Design und Zoom pro Box

Jede Box hat ihr eigenes **Design** (Dropdown im Burger-Menü ☰, sobald die Box geöffnet ist) — neue Boxen starten immer mit dem Design „Clean". Ebenso hat jede Box ihre eigene **Zoomstufe**: Die Zoom-Buttons in der Fußleiste wirken sich bei geöffneter Box ausschließlich auf diese eine Box aus (Quelltext und Vorschau gemeinsam) — alle anderen Boxen behalten ihre eigene, unabhängig gespeicherte Zoomstufe. Neue Boxen starten bei 100 %; beim erneuten Öffnen einer Box wird ihre zuletzt eingestellte Zoomstufe exakt wiederhergestellt.

### Navigation: Verschieben und Zoomen der Fläche

Solange keine Box geöffnet ist, ersetzt eine kleine Übersichtskarte unten rechts (mit Pfeil-Buttons zum Verschieben) die normale Formatierungsleiste, und die Zoom-Buttons in der Fußleiste steuern in diesem Zustand den Zoom der gesamten Fläche statt Editor/Vorschau. Die Fläche lässt sich außerdem direkt mit der Maus verschieben — durch Klicken und Ziehen auf einen leeren Bereich der Canvas, auch während eine Box gerade geöffnet ist.

### Hintergrundfarbe

Ist keine Box geöffnet, erscheint an der Stelle der Design-Auswahl im Burger-Menü ☰ stattdessen ein Farbwähler — damit lässt sich der Canvas selbst (die Seite, nicht eine einzelne Box) mit einer eigenen Hintergrundfarbe versehen.

### Vorlesemodus im Canvas

Ein eigener 🔊-Button oben links über der Canvas-Fläche liest alle Boxen der Reihe nach vor — von oben links beginnend, zeilenweise in Leserichtung. Die gerade vorgelesene Box wird dabei automatisch in den sichtbaren Bereich verschoben und wie im normalen [Vorlesemodus](#15-vorlesemodus) Wort für Wort hervorgehoben; eingebettete Bilder, Zeichnungen, Audiodateien und Web-Einbettungen werden dabei genauso behandelt. Da Boxen frei auf der Fläche platziert sind, gibt es keine hundertprozentig eindeutige Leserichtung — bei unregelmäßig angeordneten oder überlappenden Boxen kann die tatsächliche Reihenfolge daher gelegentlich von der Erwartung abweichen.

### Präsentationsmodus im Canvas

Der [Präsentationsmodus](#16-präsentationen-erstellen) lässt sich auch auf ein Canvas-Dokument anwenden: jede Box wird dabei zu einer eigenen Folie, in derselben Leserichtung wie der Vorlesemodus (siehe oben) und jeweils mit dem eigenen Design der Box. Enthält eine Box selbst Folientrennlinien (`---`), wird sie zusätzlich in mehrere aufeinanderfolgende Folien aufgeteilt statt nur eine einzige zu ergeben.

### Export

**Als eigenständige HTML-Datei exportieren** (siehe [Abschnitt 18](#18-export-und-teilen)) erzeugt bei einem Canvas-Dokument eine eigenständige Seite mit exakt demselben Layout (Boxen an derselben Position und Größe), dem Design jeder einzelnen Box (eine Kreidetafel-Box bleibt also eine Kreidetafel) und einem eigenen, funktionierenden Vorlesen-Button — auch außerhalb dieser App nutzbar.

**🖨️ Drucken / Als PDF speichern** druckt die Canvas-Seite passend auf ein DIN-A4-Blatt (Hoch- oder Querformat, je nach Seitenausrichtung) — unabhängig davon, wie weit die Fläche gerade im Browserfenster gezoomt oder verschoben ist.

**📋 Formatierte Notiz in die Zwischenablage kopieren** reiht bei einem Canvas-Dokument alle Boxen in Leserichtung aneinander (durch eine Trennlinie getrennt, jede im eigenen Design), statt — wie sonst — nur den Inhalt eines einzelnen Dokuments zu kopieren.

---

Fragen, Ideen oder Fehler gefunden? [github.com/Majort0m0/Markdown-Editor](https://github.com/Majort0m0/Markdown-Editor)

## 12. Betriebsarten: Fokus, Simple, Voll

Über das Burger-Menü ☰ → **Betriebsart** lässt sich einstellen, wie viel Oberfläche sichtbar ist. Die Wahl bleibt geräteweit gespeichert.

- **Fokus** (Standard) — nur der Text. Keine Titelzeile, keine Werkzeugleiste; alle Aktionen stecken im Burger-Menü. Für konzentriertes Schreiben.
- **Simple** — große Schrift (Zoom 130 %), Design „Clean" und eine stark reduzierte Werkzeugleiste mit nur den wichtigsten Knöpfen (Überschrift, Bild, Foto, Zeichnung, Audio). Es gibt hier keine geteilte Ansicht, nur Vorschau **oder** Quelltext. Gedacht für Tablets, jüngere Nutzer:innen oder eine bewusst aufgeräumte Umgebung. Auch per Link mit `?simple=true` bzw. `?simple=false` schaltbar.
- **Voll** — alle Werkzeuge sichtbar, inklusive vollständiger Formatierungsleiste und Titelzeile.

### Die Oberfläche

- **Burger-Menü ☰** (oben rechts) — Betriebsart, Ansicht, Inhaltsbreite, Nebenspalte, Neu, Öffnen, Speichern, Backup, Formatiert kopieren, Rückgängig/Wiederherstellen, Suchen & Ersetzen, Abstände optimieren, Rechtschreibprüfung, ein eigener Abschnitt für Liedblätter (Akkordblatt importieren, Songbook, Fußschalter), Exporte (HTML, Drucken/PDF, E-Mail), WebDAV-Einstellungen, Design und „Über" mit Versionsnummer.
- **Notizleiste** (Button oben links) — die Liste aller offenen Notizen, untereinander statt als Tableiste. Ein Klick öffnet sie als Overlay; über das Pin-Symbol wird daraus eine feste Seitenspalte, neben der das Notizfenster entsprechend schmaler wird.
- **Fußleiste** — links Wörter/Zeichen, mittig die Speicherplatzanzeige, rechts Zoom, Vollbild und Präsentationsmodus.
- **Inhaltsbreite** — in der Einzel-Vorschau wahlweise „Schmal" (zentriert, etwa DIN-A4-Breite) oder „Breit" (volle Fensterbreite). Auf schmalen Bildschirmen wird ohnehin immer die volle Breite genutzt.
- **Synchrones Scrollen** — der kleine Knopf oben auf der Trennlinie zwischen Quelltext und Vorschau; nur in der geteilten Ansicht sichtbar.

## 13. Designs, Ansicht und Fokus-Modi

### Designs

15 Vorschau-Designs stehen über das Dropdown im Burger-Menü ☰ zur Auswahl: GitHub Light/Dark, Solarized Paper, Academic Serif, Dracula, Gruvbox Dark, Sepia, High Contrast, Tokyo Night, Catppuccin Latte, PDF, Word, Journal, Clean, Bunt (mit farbiger Code-Hervorhebung). Das Design wird **pro Tab** gemerkt, nicht global für die ganze App — jedes Dokument kann also sein eigenes Design haben, und diese Wahl wird bei aktivem WebDAV-Sync mit übertragen. Eine neue Notiz startet dabei immer im Design „GitHub Light“, unabhängig davon, welches Design in der zuvor aktiven Notiz eingestellt war.

### Editor/Vorschau und geteilte Ansicht

- Editor bzw. Vorschau lassen sich einzeln ausblenden — über das Burger-Menü ☰ → **Ansicht** (Vorschau / Quelltext / Split), in der Betriebsart Voll zusätzlich über zwei Buttons in der Kopfzeile.
- Der Trenner zwischen Editor und Vorschau lässt sich per Maus/Touch frei in beide Richtungen ziehen.
- Sowohl welche Bereiche gerade sichtbar sind als auch die Position des Trenners werden **pro Notiz** gemerkt (genau wie das Design oben) und bei aktivem WebDAV-Sync mit übertragen — jedes Dokument öffnet also wieder genau in der Ansicht, in der es zuletzt verlassen wurde. Eine neu erstellte Notiz startet dabei immer bei einer 50/50-Aufteilung mit beiden Bereichen sichtbar, unabhängig von der zuvor aktiven Notiz.
- **Synchrones Scrollen** (Doppelpfeil-Symbol) hält Editor und Vorschau beim Scrollen prozentual aufeinander abgestimmt; lässt sich bei Bedarf abschalten.
- **Zoom** vergrößert/verkleinert Editor und Vorschau gemeinsam (`Strg`/`Cmd`+`+`/`-`).

### Vollbildmodus

Blendet Kopf-, Fuß- und Tableiste sowie alle Menüs aus. Auf den meisten Geräten der echte Browser-Vollbildmodus; auf iOS Safari (das dies nicht unterstützt) ein CSS-Fallback, der den sichtbaren Bereich ausfüllt. In beiden Fällen bleibt oben rechts ein kleiner ✕-Button sichtbar, um den Vollbildmodus wieder zu verlassen.

### Simple Modus

Der „Simple"-Schalter oben rechts reduziert die Werkzeugleisten auf das Nötigste (Öffnen, Speichern, Rückgängig/Wiederherstellen, Quelltext/Vorschau als einfacher Umschalter statt Splitscreen, Zoom, Vollbild sowie Überschrift/Bild/Foto/Zeichnung/Audio), stellt automatisch das Design „Clean" und eine größere Zoomstufe ein und springt beim Einfügen von Medien direkt in die Vorschau. Praktisch für Tablets, jüngere Nutzer:innen oder eine bewusst aufgeräumte Schreibumgebung. Lässt sich auch direkt per Link mit angehängtem `?simple=true` aktiviert (bzw. `?simple=false` deaktiviert) öffnen — siehe [Abschnitt 20](#20-direktlinks-mit-url-parametern).

## 14. Inhaltsverzeichnis-Panel in der Vorschau

Der schwebende Button oben rechts über der Vorschau (Listen-Symbol) öffnet ein Inhaltsverzeichnis aus allen Überschriften (H1–H6) des Dokuments. Ein Klick auf einen Eintrag springt direkt zur passenden Stelle in der Vorschau. Das Panel bleibt beim Scrollen sichtbar an seiner Position und schließt sich automatisch bei Klick daneben, per `Escape` oder wenn die Vorschau ausgeblendet wird.

## 15. Vorlesemodus

Der 🔊-Button (oben rechts neben dem Inhaltsverzeichnis-Button) liest das aktuelle Dokument laut vor und hebt dabei Wort für Wort den gerade gesprochenen Text hervor.

- **Klick** startet das Vorlesen, **erneuter Klick** pausiert an derselben Stelle, **noch ein Klick** setzt fort.
- Bilder, Fotos, Zeichnungen und Piktogramme werden mit ihrem Alt-Text (siehe [Abschnitt 7](#7-bilder-fotos-zeichnungen-und-piktogramme-einfügen)) angekündigt, sofern einer gesetzt ist — sonst mit einer generischen Ankündigung („Hier ist ein Bild." usw.). Videos werden immer als „Hier ist ein Video." angekündigt. Eine [Web-Einbettung](#9-audio-video-und-web-einbettungen) wird immer mit ihrem Titel-Text vorgelesen.
- Sprachaufnahmen und eingefügte Audiodateien werden während des Vorlesens tatsächlich abgespielt.
- Das Vorlesen stoppt automatisch beim Tab-Wechsel, beim Bearbeiten des Texts oder wenn die Vorschau ausgeblendet wird — nie mitten im Text unbemerkt weiterlaufend im Hintergrund.
- Steht der Vorlesemodus innerhalb einer Präsentation (siehe [Abschnitt 16](#16-präsentationen-erstellen)) am Ende einer Folie an, blättert er automatisch zur nächsten Folie weiter und liest dort fort.
- Der [Canvas-Modus](#11-canvas-modus-freie-notizfläche) hat einen eigenen Vorlesen-Button, der alle Notizzettel der Reihe nach vorliest — siehe dort.

Der Vorlesemodus funktioniert identisch in der Live-Vorschau, im Präsentationsmodus und in beiden HTML-Exporten (siehe [Abschnitt 18](#18-export-und-teilen)) — eine exportierte Datei liest sich also auch offline und ohne diese App selbst vor.

## 16. Präsentationen erstellen

Aus jedem Dokument lässt sich mit einem Klick eine Bildschirmpräsentation machen — ganz ohne separates Präsentationsprogramm.

**Folien trennen:** eine Zeile mit nur `---` (oder `***` bzw. `___`), am Zeilenanfang oder nach einer Leerzeile, trennt zwei Folien voneinander. Die mitgelieferte „Präsentation"-Vorlage (über ✨ Neu) zeigt das direkt an einem Beispiel.

**Präsentationsmodus starten:** Button rechts unten in der Fußleiste (Bildschirm-Symbol). Navigation:

- Pfeiltasten oder Leertaste (Tastatur)
- Linke Bildschirmhälfte anklicken/antippen = vorherige Folie, rechte Hälfte = nächste Folie
- `Escape` oder das ✕ oben rechts beendet die Präsentation

**Automatisches Layout:** eine Folie mit nur einer einzelnen H1-Überschrift wird groß mittig zentriert (Titelfolie); eine Folie ganz ohne Überschrift (z. B. ein Zitat) wird als Block zentriert, behält aber linksbündigen Text; jede andere Folie (Überschrift + Inhalt) wird normal wie in der Vorschau dargestellt.

**Weitere Werkzeuge innerhalb der Präsentation:** ein eigenes Inhaltsverzeichnis unten links (springt zur ersten Überschrift jeder Folie), der Vorlesemodus oben links sowie eine Folienzähler-Anzeige unten rechts.

## 17. WebDAV-Synchronisierung zwischen mehreren Geräten

Dokumente lassen sich zwischen mehreren Geräten (z. B. Laptop und Tablet) über einen eigenen WebDAV-Speicher synchronisieren (z. B. Nextcloud). Es wird dabei nur eine einzelne JSON-Datei am angegebenen Ort verwendet — kein Ordner-Browsing, keine sonstigen Berechtigungen nötig.

**Einrichtung:**

1. **WebDAV-Einstellungen** im Burger-Menü ☰ öffnen (bei eingerichteter Verbindung liegt zusätzlich ein ☁️-Button in der Kopfzeile, der dieselben Einstellungen öffnet).
2. **Server-URL** eintragen — entweder die genaue Zieldatei oder einfach ein Ordner (die App hängt dann automatisch `markdown-studio-sync.json` an).
3. **Benutzername** und **App-Kennwort** eintragen (bei den meisten Cloud-Diensten ein separat erstelltes App-Kennwort, nicht das Hauptpasswort).
4. „Automatisch synchronisieren" aktivieren und ein Intervall wählen, oder manuell über „🔄 Jetzt synchronisieren" synchronisieren.

Der ☁️-Button färbt sich **hellgrün**, sobald mindestens eine Synchronisierung tatsächlich erfolgreich war und seitdem kein Fehler aufgetreten ist — bei aktivem Intervall zeigt zusätzlich ein dunkelgrüner Ring um den Button an, wie viel Zeit bis zur nächsten automatischen Synchronisierung verbleibt (voller Kreis = Synchronisierung steht unmittelbar bevor). In der Tableiste bekommt jeder erfolgreich synchronisierte, unveränderte Tab einen schmalen grünen Rand.

**Was wird synchronisiert:** Name, Inhalt, eingefügte Bilder/Zeichnungen/Audio, das gewählte Design sowie die Editor-/Vorschau-Ansicht (welche Bereiche sichtbar sind und die Position des Trenners) jedes Dokuments. Rein geräteweite Einstellungen (Zoomstufe, Simple Modus) werden **nicht** mit übertragen.

**Bei Konflikten** (dasselbe Dokument wurde auf zwei Geräten unterschiedlich geändert) fragt die App pro betroffenem Dokument nach: „Lokal behalten", „Server-Version" übernehmen oder „Beide behalten" (die Server-Version landet dann als zusätzliche, neue Notiz).

**Zugangsdaten auf ein anderes Gerät übertragen:** „📄 Konfigurationsdatei öffnen" in den WebDAV-Einstellungen erstellt eine vorausgefüllte Notiz mit der Server-URL (Benutzername/Passwort bewusst leer gelassen). Diese Notiz auf dem zweiten Gerät öffnen, Zugangsdaten ergänzen — die App erkennt das Format automatisch und übernimmt die Einstellungen direkt, ohne das Einstellungsfenster manuell öffnen zu müssen.

## 18. Export und Teilen

- **Als eigenständige HTML-Datei exportieren** — erzeugt eine einzelne, komplett unabhängige HTML-Datei mit dem aktuellen Design, die sich in jedem Browser ohne diese App öffnen lässt (inklusive funktionierendem Vorlesemodus und Inhaltsverzeichnis). Enthält das Dokument Folientrennlinien (`---`), fragt die App zusätzlich, ob stattdessen als **eBook-Widget** exportiert werden soll — eine eigenständige, klickbare Diaschau-Datei mit denselben Übergängen wie der Präsentationsmodus.
- **🖨️ Drucken / Als PDF speichern** — nutzt den normalen Druckdialog des Browsers; nur die Vorschau wird gedruckt, im aktuell gewählten Design (inklusive Hintergrundfarben).
- **📋 Formatierte Notiz in die Zwischenablage kopieren** — kopiert das gerenderte Dokument (Überschriften, Fett/Kursiv, Listen, Tabellen, Bilder) als formatierten Text, bereit zum Einfügen in Word, Outlook, Gmail o. Ä. Für exakte Absatz-Abstände zählt hier auch die Anzahl mehrerer aufeinanderfolgender Leerzeilen im Quelltext.

## 19. Tastenkürzel

Für so gut wie jede Funktion aus Menü, Formatierungsleiste und Tabellen-Werkzeugen gibt es ein Tastenkürzel — viele davon von Haus aus vorbelegt, alle über die Tastenkürzel-Hilfe im Burger-Menü ☰ einzeln auf eine eigene Kombination umlegbar. Auf Mac und iPad wird automatisch `Cmd` (⌘) statt `Strg` verwendet, erkennbar an den ⌘/⌥/⇧-Symbolen im Tastenkürzel-Fenster und in den Buttons-Tooltips.

### Vorbelegte Tastenkombinationen

**Datei**

| Tastenkombination | Aktion |
|---|---|
| `Strg`/`Cmd` + `Alt` + `N` | Neu (Vorlagenauswahl) |
| `Strg`/`Cmd` + `Alt` + `T` | Neuer leerer Tab |
| `Strg`/`Cmd` + `O` | Öffnen |
| `Strg`/`Cmd` + `S` | Speichern |
| `Strg`/`Cmd` + `Umschalt` + `S` | Speichern unter |
| `Strg`/`Cmd` + `Alt` + `W` | Tab schließen |
| `Strg`/`Cmd` + `Alt` + `E` | Als HTML exportieren |
| `Strg`/`Cmd` + `P` | Drucken / Als PDF speichern |
| `Strg`/`Cmd` + `Alt` + `X` | Formatiert kopieren |
| `Strg`/`Cmd` + `Alt` + `Y` | WebDAV-Synchronisierung |

**Bearbeiten**

| Tastenkombination | Aktion |
|---|---|
| `Strg`/`Cmd` + `Z` | Rückgängig |
| `Strg`/`Cmd` + `Y` bzw. `Strg`/`Cmd` + `Umschalt` + `Z` | Wiederherstellen |
| `Strg`/`Cmd` + `F` | Suchen & Ersetzen |
| `Strg`/`Cmd` + `Alt` + `L` | Formatierung aufräumen |
| `Strg`/`Cmd` + `Alt` + `R` | Rechtschreibprüfung umschalten |

**Format**

| Tastenkombination | Aktion |
|---|---|
| `Strg`/`Cmd` + `B` | Fett |
| `Strg`/`Cmd` + `I` | Kursiv |
| `Strg`/`Cmd` + `Umschalt` + `X` | Durchgestrichen |
| `Strg`/`Cmd` + `E` | Code (Inline) |
| `Strg`/`Cmd` + `Alt` + `1`–`6` | Überschrift 1–6 |
| `Strg`/`Cmd` + `Umschalt` + `8` | Aufzählung |
| `Strg`/`Cmd` + `Umschalt` + `7` | Nummerierte Liste |
| `Strg`/`Cmd` + `Umschalt` + `9` | Aufgabenliste |
| `Strg`/`Cmd` + `Umschalt` + `.` | Zitat |
| `Strg`/`Cmd` + `Alt` + `K` | Code-Block |
| `Strg`/`Cmd` + `Alt` + `G` | Trennlinie |
| `Strg`/`Cmd` + `Alt` + `D` | Einklappbarer Abschnitt |
| `Strg`/`Cmd` + `K` | Link |
| `Strg`/`Cmd` + `Alt` + `B` | Web-Einbettung (iframe) |
| `Strg`/`Cmd` + `Alt` + `J` | Tabelle einfügen |
| `Strg`/`Cmd` + `Alt` + `A` | Bild einfügen |
| `Tab` / `Umschalt` + `Tab` | Einzug / Ausrücken |

**Ansicht**

| Tastenkombination | Aktion |
|---|---|
| `Strg`/`Cmd` + `Alt` + `Q` | Quelltext ein-/ausblenden |
| `Strg`/`Cmd` + `Alt` + `V` | Vorschau ein-/ausblenden |
| `Strg`/`Cmd` + `+` / `-` | Vergrößern / Verkleinern |
| `Strg`/`Cmd` + `Alt` + `F` | Vollbildmodus umschalten |
| `Strg`/`Cmd` + `Alt` + `P` | Präsentationsmodus starten |
| `Strg`/`Cmd` + `Alt` + `O` | Inhaltsverzeichnis umschalten |
| `Strg`/`Cmd` + `Alt` + `U` | Vorlesen starten/pausieren |
| `Strg`/`Cmd` + `Alt` + `S` | Simple Modus umschalten |
| `Strg`/`Cmd` + `Alt` + `/` | Tastenkürzel anzeigen |

**Immer fest** (nicht anpassbar, da an eine feste, allgemeine Konvention statt an eine einzelne Aktion gebunden)

| Tastenkombination | Aktion |
|---|---|
| `Enter` in einer Liste | Nächsten Listenpunkt fortsetzen |
| `Enter` auf leerem Listenpunkt | Liste beenden |
| `Esc` | Aktuelles Fenster/Modal schließen (bricht auch eine gerade laufende Tastenkürzel-Aufnahme ab, siehe unten) |

Foto/Zeichnung/Clipart/Sprachaufnahme/Video einfügen sowie alle Tabellen-Zeilen-/Spalten-Werkzeuge (Einfügen, Verschieben, Löschen, Sortieren nach Spalte) haben von Haus aus **keine** Vorbelegung — sie lassen sich aber genau wie jede andere Aktion im nächsten Abschnitt eine eigene Kombination zuweisen.

### Eigene Tastenkombinationen zuweisen

Im Tastenkürzel-Fenster (Burger-Menü ☰) steht neben jeder Aktion die aktuell zugewiesene Kombination als anklickbarer Button. Ein Klick darauf startet die Aufnahme („Taste drücken …") — einfach die gewünschte Kombination drücken (dabei muss mindestens `Strg` oder `Alt` gehalten werden, damit normales Tippen im Editor nie blockiert werden kann) und die neue Zuordnung ist sofort aktiv. War die Kombination bereits einer anderen Aktion zugewiesen, wird sie dort automatisch entfernt und eine kurze Meldung zeigt an, wovon sie „geklaut" wurde. `Esc` während der Aufnahme bricht sie ohne Änderung ab.

Ein kleines ↺-Symbol neben einer geänderten Kombination setzt nur diese eine Aktion auf ihren Standard zurück; „Alle auf Standard zurücksetzen" oben im Fenster setzt die komplette Liste zurück. Alle Änderungen werden geräteweit gespeichert (unabhängig von einzelnen Dokumenten) und bleiben nach einem Neuladen der Seite erhalten.

## 20. Direktlinks mit URL-Parametern

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

**Hinweis:** Wie bei `?simple=true` (siehe [Abschnitt 13](#13-designs-ansicht-und-fokus-modi)) wird die so gewählte Ansicht als neuer Stand gespeichert und bleibt auch bei einem späteren Öffnen ohne den Parameter bestehen — bis sie manuell oder über einen erneuten `?view=`-Link geändert wird.

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

Aktiviert bzw. deaktiviert den [Simple Modus](#13-designs-ansicht-und-fokus-modi) beim Öffnen, unabhängig davon, was zuletzt in diesem Browser eingestellt war — genau wie bei `?view=` bleibt die so gewählte Einstellung anschließend als neuer Stand gespeichert:

```
https://majort0m0.github.io/Markdown-Editor/?simple=true
https://majort0m0.github.io/Markdown-Editor/?simple=false
```

Praktisch z. B. für einen Lesezeichen-Link auf einem Tablet, der immer im reduzierten Simple Modus startet, oder umgekehrt einen Link, der ihn zuverlässig wieder ausschaltet.

## 21. Speicherplatz und Datenschutz

Alle Dokumente und eingefügten Medien werden ausschließlich lokal im Browser gespeichert — es findet keine Übertragung an einen Server statt, außer wenn WebDAV-Synchronisierung aktiv eingerichtet wurde (siehe [Abschnitt 17](#17-webdav-synchronisierung-zwischen-mehreren-geräten)), und dann nur an das selbst angegebene Ziel.

Text und Metadaten liegen im schnellen `localStorage` des Browsers; größere Anhänge (Bilder, Zeichnungen, PDF-Seiten, Audio) liegen in IndexedDB, das deutlich mehr Kapazität bietet. Die Fußleiste zeigt rechts neben der Wort-/Zeichen-Statistik der aktuellen Notiz einen Prozentbalken sowie die reine Datengröße aller aktuell geöffneten Notizen zusammen. Der Prozentwert bezieht sich dabei auf das jeweils knappere der beiden Speicher — meist `localStorage`, das ein deutlich kleineres, festes Limit hat (wenige MB) als IndexedDB, wo die eigentlichen Anhänge liegen; ein `~` davor zeigt an, dass es sich um eine Schätzung handelt (die genaue `localStorage`-Grenze lässt sich nicht browserübergreifend zuverlässig abfragen). Sollte der Speicherplatz des Browsers dennoch einmal knapp werden, erscheint zusätzlich ein kleines Warndreieck am betroffenen Tab.

**Empfehlung bei sehr großen Dokumenten** (viele/hochauflösende Bilder, umfangreiche PDF-Importe): regelmäßig über WebDAV sichern oder als Datei exportieren — das lokale lokale Speicherlimit des Browsers ist zwar großzügig, aber nicht unbegrenzt.

## 22. Tipps und häufige Fragen

**Wie öffne ich dasselbe Dokument auf einem anderen Gerät?** Entweder die gespeicherte `.md`-Datei übertragen (sie ist vollständig eigenständig, inklusive aller eingebetteten Bilder als Base64-Daten) oder WebDAV-Synchronisierung einrichten (siehe [Abschnitt 17](#17-webdav-synchronisierung-zwischen-mehreren-geräten)).

**Bleibt eine Zeichnung nach dem Speichern der Datei weiter bearbeitbar?** Ja, solange die Notiz innerhalb dieser App geöffnet bleibt oder als `.md`-Datei wieder in dieser App geöffnet wird. Wird die Datei dagegen extern bearbeitet oder in einer anderen Markdown-App geöffnet, geht diese Information verloren — sie erscheint dann als normales, nicht mehr per Doppelklick bearbeitbares Bild.

**Funktioniert die App ohne Internetverbindung?** Ja — sowohl die online gehostete Version (nach dem ersten Laden) als auch besonders die lokal heruntergeladene `Markdown-Editor.html` funktionieren komplett offline. Nur Kamera, Mikrofon, WebDAV-Synchronisierung und die Clipart-Suche (siehe [Abschnitt 7](#7-bilder-fotos-zeichnungen-und-piktogramme-einfügen)) benötigen die jeweilige Geräteberechtigung bzw. eine Verbindung zum eigenen Server bzw. zu ARASAAC.

**Wo werden Video-Links abgespielt?** Eingebettete YouTube-/Vimeo-Videos benötigen zum Abspielen eine echte Internetverbindung sowie einen Aufruf über `http(s)://` (nicht `file://`) — beim lokalen Öffnen der Datei direkt vom Dateisystem wird stattdessen ein Hinweis mit Link zum Original angezeigt.
