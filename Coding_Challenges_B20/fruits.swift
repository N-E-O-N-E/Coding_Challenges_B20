
import Foundation

struct FruitMarket {

    var fruitsArray: [String] = []
    var fruitsDict: [String:Double] = [:]
    
    init() {
        
        self.fruitsArray.append("Kiwi")
        
        self.fruitsArray += ["Äpfel", "Banane", "Kirsche", "Ananas"]
        
        let kiwi = fruitsArray[0]
        fruitsDict[kiwi] = 0.49
        fruitsDict[fruitsArray[1]] = 0.49
        fruitsDict["Banane"] = 0.50
        
        fruitsDict.updateValue(0.45, forKey: fruitsArray[3])
        
        fruitsDict.updateValue(0.35, forKey: fruitsArray[fruitsArray.count - 1])
        
    }
    
    mutating func addFruits() {
        
        var count = 0
        
        while count < 3 {
            
            print("Bitte Frucht eingeben: ")
            let userFrucht: String = readLine()!.capitalized
            print("Bitte Preis eingeben: ")
            let userPreis: String  = readLine()!
            
            let price: Double = Double(userPreis) ?? 0.00
            
            
            
            fruitsArray.append(userFrucht)
            fruitsArray += [userFrucht]
            
            fruitsDict[userFrucht] = price
            
            count += 1
        
        }
        
        
    }
    
    
    
} // Ende Struct
