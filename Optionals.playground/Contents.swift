import Foundation
// optional parameter

func multiplyByTwo(_ value: Int? = nil) -> Int {
    if let value {
        return value * 2    
    }
    else {
        return 0
    }
}

multiplyByTwo()
multiplyByTwo(2)

// optional variable

let age: Int? = nil

if age != nil {
    "Age is in that variable"
}
else {
    "Age is nil"
}

// OR

if let age {
    "It means the age is not nill"
}
else {
    "Age is nil"
}

struct Person {
    let name: String
    let address: Address?
}

struct Address {
    let address: String?
}

let personInstance = Person(name: "Shelvin", address: Address(address: "Perumadan House"))

if let personAddressLine = personInstance.address?.address {
    personAddressLine
}
else {
    "it doesint have any address"
}
