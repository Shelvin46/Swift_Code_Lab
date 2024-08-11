import Foundation

// Protocols are kind of onjects similar like jave interface
protocol CanBreathe {
    func breathe()
}

// structures do not allow to inherit another but it allow inheritance in protocol classes
struct Animal: CanBreathe {
    func breathe() {
        "Animal Breathing..."
    }
}

struct Person: CanBreathe {
    func breathe() {
        "Person Breathing.."
    }
}

let dog = Animal()
dog.breathe()
let person = Person()
person.breathe()

protocol Data {
    var name: String { get }
    var age: Int { get set }
}

extension Data {
    func describeMe() {
        "My name is \(name) and my age is \(age)"
    }
    
    mutating func increaseAge() {
        self.age += 1
    }
}

struct Dog: Data {
    let name: String
    var age: Int
}

var dogTwo = Dog(name: "Kaiser", age: 4)
dogTwo.age
dogTwo.name
dogTwo.increaseAge()
dogTwo.describeMe()

protocol Vehicle {
    var speed: Int {get set}
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bus: Vehicle {
    var speed: Int
}

var bus = Bus(speed: 0)
bus.speed
bus.increaseSpeed(by: 40)
bus.speed

func describeAny(_ obj: Any) {
    if obj is Vehicle {
        "This is Vehicle Protocol"
    }
    else if obj is CanBreathe {
        "This is Can Breathe Protocol"
    }
    else if obj is Data {
        "This is Data Protocol"
    }
    else {
        "Opps.. This protocol is not available"
    }
    
}

describeAny(dog)
