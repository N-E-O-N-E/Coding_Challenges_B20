////
////  Challenge_03-06-02-1.swift
////  CodingChallenges_iOS
////
////  Created by Markus Wirtz on 01.10.24.
////
//
//import Foundation
//
//struct Person: Codable {
//    let name: String
//    let alter: Int
//    let stadt: String
//}
//
////---------------------------------------------------------------------------
//
//struct Person: Codable {
//    let name: String
//    let alter: Int
//    let stadt: String
//    let kontaktdaten: Kontaktdaten
//    let interessen: [String]
//}
//
//struct Kontaktdaten: Codable {
//    let email, telefon: String
//}
//
////---------------------------------------------------------------------------
//
//
//struct Person: Codable {
//    let name: String
//    let alter: Int
//    let stadt: String
//    let kontaktdaten: Kontaktdaten
//    let beruf: Beruf
//    let interessen: [String]
//    let sozialeMedien: [SozialeMedien]
//}
//
//
//struct Beruf: Codable {
//    let titel: String
//    let firma: Firma
//}
//
//
//struct Firma: Codable {
//    let name, abteilung: String
//    let standort: Adresse
//}
//
//
//struct Adresse: Codable {
//    let strasse, plz, stadt, land: String
//}
//
//
//struct Kontaktdaten: Codable {
//    let email, telefon: String
//    let adresse: Adresse
//}
//
//
//struct SozialeMedien: Codable {
//    let plattform, profilname: String
//}
//
////--------------------------------------------------------------------------------
//
//
//struct Mitarbeiter: Codable {
//    let person: Person
//    let beruf: Beruf
//    let hobbies: [Hobby]
//}
//
//
//struct Beruf: Codable {
//    let titel: String
//    let firma: Firma
//}
//
//
//struct Firma: Codable {
//    let name, abteilung: String
//    let standort: Standort
//}
//
//
//struct Standort: Codable {
//    let stadt, land: String
//}
//
//
//struct Hobby: Codable {
//    let name: String
//    let letzteReise: LetzteReise?
//    let kameramodell: String?
//}
//
//
//struct LetzteReise: Codable {
//    let ziel, datum: String
//}
//
//
//struct Person: Codable {
//    let name: String
//    let alter: Int
//    let geschlecht: String
//    let adresse: Adresse
//    let kontaktdaten: Kontaktdaten
//}
//
//
//struct Adresse: Codable {
//    let strasse, stadt, plz, land: String
//}
//
//
//struct Kontaktdaten: Codable {
//    let email, telefon: String
//}
//
//
