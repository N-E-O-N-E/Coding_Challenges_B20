

//  main.swift
//  tictactoe_wirtz
//  Created by Markus Wirtz on 06.07.24.

import Foundation




// ---------------------------------------------------------> Variablen

// Einzelne Felder des Spielfelds
var f1: String = "x"
var f2: String = " "
var f3: String = " "
var f4: String = " "
var f5: String = "o"
var f6: String = "o"
var f7: String = "x"
var f8: String = " "
var f9: String = " "

// Status des Spiels
var gewonnen: Bool = false

// Player status
var spieler_x: String = " "
var spieler_o: String = " "
var spielerPosition: String = " "



// -------------------------------------------------------> Schreibt die Positionen in die Variablen

func schreibePosition(spieler: String, position: String) {

    if position == "f1" {
        f1 = spieler
    }
    if position == "f2" {
        f2 = spieler
    }
    if position == "f3" {
        f3 = spieler
    }
    if position == "f4" {
        f4 = spieler
    }
    if position == "f5" {
        f5 = spieler
    }
    if position == "f6" {
        f6 = spieler
    }
    if position == "f7" {
        f7 = spieler
    }
    if position == "f8" {
        f8 = spieler
    }
    if position == "f9" {
        f9 = spieler
    }
}




// -------------------------------------------------------> Prüft den Spielstatus "gewonnen"

func pruefeSpielstatus() {
    
    // Spieler x
    if (f1 == spieler_x && f2 == spieler_x && f3 == spieler_x) ||
       (f4 == spieler_x && f5 == spieler_x && f6 == spieler_x) ||
       (f7 == spieler_x && f8 == spieler_x && f9 == spieler_x) ||
       (f1 == spieler_x && f4 == spieler_x && f7 == spieler_x) ||
       (f2 == spieler_x && f5 == spieler_x && f8 == spieler_x) ||
       (f3 == spieler_x && f6 == spieler_x && f9 == spieler_x) ||
       (f1 == spieler_x && f5 == spieler_x && f9 == spieler_x) ||
       (f3 == spieler_x && f5 == spieler_x && f7 == spieler_x) {
        print("\n#### Spieler (\(spieler_x)) hat das Spiel gewonnen! ####")
        gewonnen = true
    }

    // Spieler o
    if (f1 == spieler_o && f2 == spieler_o && f3 == spieler_o) ||
       (f4 == spieler_o && f5 == spieler_o && f6 == spieler_o) ||
       (f7 == spieler_o && f8 == spieler_o && f9 == spieler_o) ||
       (f1 == spieler_o && f4 == spieler_o && f7 == spieler_o) ||
       (f2 == spieler_o && f5 == spieler_o && f8 == spieler_o) ||
       (f3 == spieler_o && f6 == spieler_o && f9 == spieler_o) ||
       (f1 == spieler_o && f5 == spieler_o && f9 == spieler_o) ||
       (f3 == spieler_o && f5 == spieler_o && f7 == spieler_o) {
        print("\n#### Spieler (\(spieler_o)) hat das Spiel gewonnen! ####")
        gewonnen = true
    }
}

// -------------------------------------------------------> Gibt das Spielfeld als String zurück

func aktualisiereSpielfeld() -> String {
    return """
    TicTacToe by Markus Wirtz
    -------------------------
         [ \(f1) ][ \(f2) ][ \(f3) ]
         [ \(f4) ][ \(f5) ][ \(f6) ]
         [ \(f7) ][ \(f8) ][ \(f9) ]
    -------------------------
    """
}




// --------------------------------------------------------> Spielstart

print("------ Willkommen bei TicTacToe ------\n")

print("Hallo Spieler 1, bitte vergib ein Spielzeichen:")
spieler_x = String(readLine()!)

print("Hallo Spieler 2, bitte vergib ein Spielzeichen:")
spieler_o = String(readLine()!)

print("\nSuper, das Spiel kann beginnen!\n")

repeat {
    if gewonnen == false {
        print(aktualisiereSpielfeld())

        print("Spieler (\(spieler_x)), entscheide dich für ein Feld:")
        spielerPosition = String(readLine()!)
        schreibePosition(spieler: spieler_x, position: spielerPosition)
        pruefeSpielstatus()

        if gewonnen == false {
            print(aktualisiereSpielfeld())

            print("Spieler (\(spieler_o)), entscheide dich für ein Feld:")
            spielerPosition = String(readLine()!)
            schreibePosition(spieler: spieler_o, position: spielerPosition)
            pruefeSpielstatus()
        }

        print(aktualisiereSpielfeld())
    } else {
        break
    }
} while gewonnen == false


print("\n<<< Das Spiel ist beendet! >>>\n")
