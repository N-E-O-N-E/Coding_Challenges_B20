//
//  main.swift
//  Challenge 2.6.2.2
//
//  Created by Markus Wirtz on 06.08.24.
//

import Foundation


func gehirn(zahl1: Int, zahl2: Int, rechne: (Int,Int) -> Void){
    print("Der Roboter denkt...")
    print("\(zahl1) und \(zahl2) werden verrechnet")
    rechne(zahl1, zahl2)
}


let plusRechnen : (Int, Int) -> Void = { (a: Int, b: Int) -> Void in
    print("Das Ergebnis der Addition lautet: \(a + b)")
    
}

let malRechnen : (Int, Int) -> Void = { (a: Int, b: Int) -> Void in
    print("Das Ergebnis der Multiplikation lautet: \(a * b)")
    
}

gehirn(zahl1: 5, zahl2: 5, rechne: plusRechnen)
gehirn(zahl1: 5, zahl2: 5, rechne: malRechnen)
