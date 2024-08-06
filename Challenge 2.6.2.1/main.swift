//
//  main.swift
//  Challenge 2.6.2.1
//
//  Created by Markus Wirtz on 06.08.24.
//

import Foundation

let robotPower = { () -> Void in
    print("Guten Morgen! Ich bin bereit für meine Aufgaben 🤖")
}

let leftArm = { (leftArm: Int) -> Void in

    print("Der Roboter bewegt den linken Arm \(leftArm) Mal  🦾")
    
}

leftArm(5)
