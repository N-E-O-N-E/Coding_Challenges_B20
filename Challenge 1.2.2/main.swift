import Foundation

/*
 
 Coding Challenge 1.2.2
 
 Du arbeitest weiter an einem Tagebuch-Programm, in dem du tägliche Aktivitäten und persönliche Informationen festhältst.

 1. Tagesziel-Konstante
 Erstelle eine Konstante, die dein Tagesziel speichert, z.B. "10.000 Schritte gehen". Verwende dafür den Datentyp String.

 2. Stunden geschlafen-Variable
 Erstelle eine Variable, die die Anzahl der Stunden speichert, die du geschlafen hast. Verwende dafür den Datentyp Int.

 3. Grundlegende Datentypen
 Erstelle diese Variablen/Konstanten und überlege dir, welchen Datentyp (String, Int, Double, Bool) du verwenden solltest:

 Die Anzahl der Tagebuch-Einträge, die du in diesem Monat gemacht hast.
 Dein Lieblingsbuch.
 Die Durchschnittstemperatur des heutigen Tages.
 Ein Gedanke oder ein Zitat, das du heute festhalten möchtest.
 Ob du heute meditierst hast oder nicht.
 
 */

// 1. Tagesziel in einer Konstante

let dayGoal : String = "10000 Schritte gehen"

// 2. Stunden geschlafen Variable

var hoursSleep : Int = 6

// 3. Datentypen

var entries : Int = 14
let favBook : String = "Das Haus am See"
var avTemp : Float = 17.6
let quote : String = "Das Leben ist kein Ponyhof"
var meditate : Bool = true

print(entries,";",favBook,";",avTemp,";",quote,";",meditate)


