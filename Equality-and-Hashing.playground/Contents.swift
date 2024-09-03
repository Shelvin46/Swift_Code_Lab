import Foundation

// Equality by Using Equatable Concept

struct Person {
    let id: String
    let name: String
}

let personOne = Person(id: "1", name: "Shelvin")
let personTwo = Person(id: "1", name: "Varghese")

if personOne == personTwo {
    "Both are Equal"
} else {
    "Both are not equal"
}

// if want to check equality if any one of property same for both insance
// we have to write == function for that

extension Person {
    static func == ( lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}

// we can use the Equatable with enumerators
enum AnimalType: Equatable {
    case dog(breed: String)
    case cat(breed: String)
}

let dogOne = AnimalType.dog(breed: "BreedOne")
let dogTwo = AnimalType.dog(breed: "BreedOne")

if dogOne == dogTwo {
    "Both are equal"
} else {
    "Both are not equal"
}

struct Room: Hashable {
    let bed: Int
    let showCase: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(bed)
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.bed == rhs.bed
    }
}

let bedOne = Room(bed: 2, showCase: 1)
let bedTwo = Room(bed: 2, showCase: 2)

let set: Set<Room> = [bedOne,bedTwo]
set.count
