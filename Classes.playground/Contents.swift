import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 22
    }
}
 
let instance = Person(name: "Shelvin Varghese", age: 1)
instance.age
instance.increaseAge()
instance.age
// the "instance" reference is giving to another instance that is "referenceInstance" if we changing any property by new instance that will always reflect to
// old instance
let referenceInstance = instance
referenceInstance.increaseAge()
instance.age
referenceInstance.age
referenceInstance.age += 21
referenceInstance.age
instance.age

// check the two instances are pointing to the same memory
if instance === referenceInstance {
    "instance and referenceInstance point to the same memory"
}
else {
    "They don't point to the same memory"
}

// inheritance
class Vehicle {
    func goVroom() {
        "Vroom vromm"
    }
}

class Car: Vehicle {
    override func goVroom() {
        "Vroom vromm vroom"
    }
    
}

let car = Car()
car.goVroom()

// setters and getters
class PersonTwo {
//    if we do not set the age variable as private we can change the value of that age from outside of this class through creating a instance of that class
    private(set) var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func increaseAge(_ age: Int) {
        self.age += age
    }
}

let instanceOfPersonTwo =  PersonTwo(age: 21)
instanceOfPersonTwo.increaseAge(2)
instanceOfPersonTwo.age
// this will throw the error
//instanceOfPersonTwo.age += 2

// a single class can multiple initializer and multiple convenience initializer
class Tesla {
    var model: String
    var year: Int
    
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    
    convenience init(_ model: String, _ year: Int) {
        self.init(model: model, year: year)
    }
}

// The convenience initializer can't call from child class for initializing we can only call the designated function

class TeslaModel: Tesla {
    override init(model: String, year: Int) {
        super.init(model: model, year: year)
    }
}

let instanceOfTeslaModel = TeslaModel(model: "X", year: 2022)
instanceOfTeslaModel.model
instanceOfTeslaModel.year
