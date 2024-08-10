import Foundation

struct Person {
    let name: String
    let age: Int
}

let instance = Person(name: "Shelvin", age: 23)

instance.age
instance.name

// custom constructors for struct
struct CommodoreComputer {
    let name: String
    let manufacturer: String
    
    init(name: String) {
        self.name = name
        self.manufacturer = "Comodore"
    }
}

let c64 = CommodoreComputer(name: "C64")
c64.manufacturer
c64.name

// executing a function while accessing any propety of a struct
struct PersonTwo {
    let firstName: String
    let lastName: String
    var fullName: String{
        firstName + " " + lastName
    }
    
}

let instanceTwo = PersonTwo(firstName: "Shelvin", lastName: "Varghese")
instanceTwo.firstName
instanceTwo.lastName
instanceTwo.fullName

//instanceTwo.firstName = "sd,fhdksgb" it will throw an error because it is an immutable struct


// mutable struct which means the struct class can dynamically change the properties
struct  Car {
    var speed: Int
  mutating func drive(_ speed: Int) {
        print("Driving.....")
        self.speed = speed
      print(self.speed)
    }
}

var carInstance = Car(speed: 40)
carInstance.drive(100)
carInstance.drive(200)
