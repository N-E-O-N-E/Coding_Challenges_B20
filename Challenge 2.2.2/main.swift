//
//  main.swift
//  Challenge 2.2.2
//
//  Created by Markus Wirtz on 02.07.24.
//

/*
 
 2. Fehler simulieren
 Um dein Programm zu testen, willst du einen Fehler des Fitnesstrackers simulieren. Bei dem Fehler soll die Zahl 10 übersprungen werden.

 Erweitere die bestehende Schleife:

 Wenn die Anzahl der Stufen 10 erreicht, soll die Ausgabe mit continue übersprungen werden, um den Fehler zu simulieren, bei dem eine Zahl übersprungen wird.
 
 */

var stairSteps: Int = 0

while true {
    stairSteps += 1
    
    
    if stairSteps == 10 {
        print("übersprungen")
        continue
    }
    
    print(stairSteps)
    
    if stairSteps == 100 {
        break
    }
   
}
