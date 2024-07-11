import Foundation

enum Monat {
    case januar, februar, maerz, april, mai, juni, juli, august, september, oktober, november, dezember
}

func getSession(month: Monat) -> String {
    
    switch month {
        
    case .januar, .februar, .dezember:
        print("Es ist \(month), das bedeutet es ist Winter")
        return "Winter"
    
    case .maerz, .april, .mai:
        print("Es ist \(month), das bedeutet es ist Frühling")
        return "Frühling"
    
    case .juni, .juli, .august:
        print("Es ist \(month), das bedeutet es ist Sommer")
        return "Sommer"
    
    case .september, .oktober, .november:
        print("Es ist \(month), das bedeutet es ist Herbst")
        return "Herbst"
    }
}

let sessionJuly: String = getSession(month: .juli) // ist wie "Sommer" da Return das zurück gibt!
print("Das Ergbenis der func getSession() mit dem Monat Juli ist: \(sessionJuly)")
