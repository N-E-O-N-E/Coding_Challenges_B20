//
//  main.swift
//  Challenge 1.4.2
//
//  Created by Markus Wirtz on 27.06.24.
//

import Foundation

/*
Coding Challenge
Du arbeitest im Hightech-Labor LabTechInc und musst verschiedene Informationen über das Projekt und die Teammitglieder verwalten und manipulieren.

1. Labor-Projekt
Erstelle drei Variablen vom Typ String, in denen du Folgendes speicherst:

Den Projektnamen "QuantumAI"
Den Teamleiter "Dr. Alan Turing"
Die Projektbeschreibung "Erforschung von Quantencomputing"
Erstelle einen neuen String und füge die drei Variablen per String-Interpolation ein.

Tipp: Verwende die \(...) Schreibweise

So kann die Ausgabe aussehen
Projekt: QuantumAI, Teamleiter: Dr. Alan Turing, Beschreibung: Erforschung von Quantencomputing.

 2. Rätsel
Hier findest du einen Text, der verschlüsselt wurde:

W🕵️💻 👻💻💻t 🥸👻n Inf🐫rm🕵️t👻k🥸r 🕵️b🥸nd💻 b🥸👻m F🥸rn💻🥸h🥸n? – M👻kr🐫ch👻p💻
Nutze .replacing(), um folgende Symbole auszutauschen:

"👻" wird zu "i"
"🥸" wird zu "e"
"🕵️" wird zu "a"
"💻" wird zu "s"
"🐫" wird zu "o"
Gib den entschlüsselten Text mit print auf der Konsole aus.
Tipp: Du kannst mehrere .replacing() hintereinander hängen, z.B.:

"Hällö".replacing("ä", with: "a").replacing("ö", with: "o")
Ergebnis: "Hallo"
*/

// 1. Rätzel
var projektName: String = "QuantumAI"
var teamleiter: String = "Dr. Alan Turing"
var projektbeschreibung: String = "Erforschung von Quantencomputing"
var stringInterpolation: String = """
Projektname: \(projektName)
Teamleiter: \(teamleiter)
Projektbeschreibung: \(projektbeschreibung)
"""
//print(stringInterpolation)

// 2. Rätzel

var originalText: String = "W🕵️💻 👻💻💻t 🥸👻n Inf🐫rm🕵️t👻k🥸r 🕵️b🥸nd💻 b🥸👻m F🥸rn💻🥸h🥸n? – M👻kr🐫ch👻p💻"
var decodeText: String = originalText.replacing("👻", with: "i").replacing("🥸", with: "e").replacing("🕵️", with: "a").replacing("💻", with: "s").replacing("🐫", with: "o")

print(decodeText)
