//
//  main.swift
//  CodingChallenges
//
//  Created by Markus Wirtz on 26.06.24.
//

import Foundation

/*
 
 Coding Challenge 1.3.2
 
 Du arbeitest weiterhin an einer Spiele-App, mit der Raumschiffsmissionen geplant werden.

 1. Vorbereitung der Mission
 Erstelle ein Tupel namens mission, das folgende Elemente enthält:

 Einen String für den Namen der Mission, z.B. "Mission Alpha".
 Ein Int für die Anzahl der Crewmitglieder, z.B. 5.
 Ein Double für die Entfernung zum Ziel in Lichtjahren, z.B. 1200.5.
 
 2. Ausgabe der Tupelwerte
 Greife auf die einzelnen Elemente des Tupels mission zu und gib sie mit dem print Befehl auf der Konsole aus.
 Ändere den Namen der Mission im Tupel auf "Mission Beta" und gib die geänderte Information aus.
 Tipp: Nutze Punktnotation (tupel.0 oder tupel.1 usw.)

 3. Typumwandlungen
 Wandle die Anzahl der Crewmitglieder in einen Double-Wert um und speichere das Ergebnis in einer neuen Variablen.

 Tipp: Nutze Double(...).

 Wandle die Entfernung zum Ziel in einen Integer-Wert um und speichere das Ergebnis in einer neuen Variablen.

 Tipp: Nutze Int(...).

 Gib die umgewandelten Werte auf der Konsole aus.
 */


// 1.
var mission : (Name: String, Crew: Int, EntfLJ: Double) = (Name: "Mission Alpha", Crew: 5, EntfLJ: 1200.5)

// 2.
print("Alter Name '\(mission.0)'")
mission.Name = "Mission Beta"
print("Neuer Name '\(mission.0)'")

// 3.

var CrewNeu = Double(mission.Crew)
var EntfNeu = Int(mission.EntfLJ)
print("Crew-Anzahl: \(CrewNeu) mit Entfernung in LJ: \(EntfNeu)")

print("Das ist eine Zeile \nund das die zweite Zeile")
