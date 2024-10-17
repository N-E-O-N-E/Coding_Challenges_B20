//
//  03_09_04-1.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 17.10.24.
//
import FirebaseFirestore

    func fetchTasks() {
        // guard let prüft ob userid vorhanden
        guard let userId = FirebaseManager.shared.userId else { return }

        // firebasemanager greift auf datenbank zu und sucht in der collection cars
        // alle einträge bei denen das userid feld mit der userid des users übereinstimmt
        FirebaseManager.shared.database.collection("cars")
            .whereField("userId", isEqualTo: userId)
        
        // echtzeitabruf der daten und übergabe an snapshot mit den daten error
            .addSnapshotListener { querySnapshot, error in
                // gibt es ein error wird hier beendet
                if let error {
                    print(error)
                    return
                }
                // es wird geprüft ob fahrzeuge da sind
                guard let documents = querySnapshot?.documents else {
                    print("Fehler beim Laden der Fahrzeuge")
                    return
                }
                
                // daten (ohne optionals) werden durch compactMap umgewandelt und übergeben
                self.cars = documents.compactMap {
                    try? $0.data(as: FireTask.self)
                }
            }
    }
    
 


