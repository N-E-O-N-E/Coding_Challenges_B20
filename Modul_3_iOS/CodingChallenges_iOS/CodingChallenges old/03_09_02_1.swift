



//// Import des Frameworks ins Projekt
//import FirebaseAuth
//
//// Autentifikation wird instanziert
//private var auth = Auth.auth()
//// Published Variable eines Objektes user "optional"
//@Published var user: User?
//
//func loginAnonymously() {
//
//    // Die Funktion von Firebase zur anonymen Anmeldung wird aufgerufen.
//    // Es werden zwei Parameter übergeben "authResult und error"
//    auth.signInAnonymously() { authResult, error in
//        
//        // Optional error wird ausgepackt und abgefangen
//        if let error {
//            print("Login failed:", error.localizedDescription)
//            return
//        }
//        
//        // Optional authResult wird entpackt und gibt einen User zurück
//        guard let authResult else { return }
//        
//        
//        print("User is logged in with id '\(authResult.user.uid)'")
//        // gefundener User wird in variable user geschrieben
//        self.user = authResult.user
//    }
//}
