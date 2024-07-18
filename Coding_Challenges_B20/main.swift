
import Foundation

var fruchtMarkt: FruitMarket = FruitMarket()

print(fruchtMarkt.fruitsDict)
print(fruchtMarkt.fruitsArray.count - 1)

// fruchtMarkt.addFruits()
print(fruchtMarkt.fruitsArray)
print(fruchtMarkt.fruitsDict)

//
//for keys in fruchtMarkt.fruitsDict.keys {
//    print(keys)
//}
//
//for values in fruchtMarkt.fruitsDict.values {
//    print(values)
//
//}
//
//for (key, value) in fruchtMarkt.fruitsDict.enumerated() {
//    print(key, value)
//}

for (index, (key, value)) in fruchtMarkt.fruitsDict.enumerated() {
    
    print("\(index+1). Key: \(key), Value: \(value)")
}
