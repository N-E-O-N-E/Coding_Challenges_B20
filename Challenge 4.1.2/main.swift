//
//  main.swift
//  Challenge 4.1.2
//
//  Created by Markus Wirtz on 15.07.24.
//

import Foundation

//var phoneNumber: String?
//print("Bitte gib die Telefonnummer des Kontakts ein:")
//phoneNumber = readLine()
//
//print("Die Telefonnummer ist \(phoneNumber!).")


//var emailAddress: String?
//print("Bitte gib die E-Mail-Adresse des Kontakts ein:")
//emailAddress = readLine()
//
//let email = emailAddress ?? "Keine E-Mail-Adresse angegeben"
//print("Die E-Mail-Adresse ist \(email).")


//var nickname: String?
//print("Bitte gib den Spitznamen des Kontakts ein:")
//nickname = readLine()
//
//if let nick = nickname {
//    print("Der Spitzname des Kontakts ist \(nick).")
//} else {
//    print("Du hast keinen Spitznamen eingegeben.")
//}


var optionalString: String?
print("Bitte gib eine Zeichenkette ein:")
optionalString = readLine()

print("Die Anzahl der Buchstaben in der eingegebenen Zeichenkette ist \(optionalString?.count).")
