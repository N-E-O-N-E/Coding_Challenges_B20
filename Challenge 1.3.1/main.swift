import Foundation

/*

 1.3.1
 
 1. Vorbereitung der Mission
 Erstelle Variablen:

 treibstoffStand mit dem Wert 1000 (deine anfängliche Treibstoffmenge).
 geschwindigkeit mit dem Wert 20 (deine anfängliche Geschwindigkeit in Lichtjahren pro Stunde).
 restStrecke mit dem Wert 1500 (die verbleibende Strecke zu deinem Ziel in Lichtjahren).
 reiseZeit mit dem Wert 0 (die bisher vergangene Zeit in Stunden).
 
 2. Rechenoperationen
 Führe folgende Berechnungen durch:

 Berechne die Strecke, die das Raumschiff in 2 Stunden bei der aktuellen Geschwindigkeit zurücklegt.
 Gib das Ergebnis mit dem print Befehl auf der Konsole aus.
 Rechnung: Geschwindigkeit mal 2

 Da 2 Stunden vergangen sind, erhöhe die Reisezeit in der Variablen um 2 Stunden.
 Rechnung: Reisezeit plus 2
 Nutze +=

 Berechne den Treibstoffverbrauch für die 2 Stunden Flugzeit und aktualisiere den Treibstoffstand.
 Rechnung: Treibstoffstand minus Geschwindigkeit mal 2
 Nutze -=
 */


// 1.
var treibstoffStand: UInt = 1000
var geschwindigkeit: UInt = 20
var restStrecke: UInt = 1500
var reiseZeit: UInt = 0

// 2.
var geflogeneStrecke: UInt = geschwindigkeit * 2
reiseZeit += 2
treibstoffStand -= geflogeneStrecke

print("Zurückgelegte Strecke: \(geflogeneStrecke) Lichtjahre" )
print("Aktuelle Reisezeit: \(reiseZeit) Stunden" )
print("Treibstoffstand: \(treibstoffStand)" )


