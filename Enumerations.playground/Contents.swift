import Foundation

// Enumerators are the collection of data in a same name

enum Animals {
    case cat, dog, rabit
}

let animal =  Animals.cat
print(animal)

if animal == Animals.cat {
    print("This is cat")
}
else if animal == Animals.dog {
    print("This is dog")
}
else {
    print("This is rabit")
}

switch animal {
    
case .cat:
    "This is cat"
    break
case .dog:
    "This is dog"
    break
case .rabit:
    "This is rabit"
    break
default:
    "This is something else"
}

// enumerators with parameter

enum ShortCut {
    case fileOrFolder
    case wwwUrl(path: URL)
    case song
}

let appleUrl = ShortCut.wwwUrl(path: URL(string: "https://apple.com")!)

if case let .wwwUrl(path) = appleUrl {
    path
}
else {
    print("Wrong path...")
}

//if case .song = appleUrl {
//   print("Correct Path")
//}
//else
//{
//    print("Wrong path...")
//}

enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
}

let carDetails = Vehicle.car(manufacturer: "Tesla", model: "X")
let bikeDetails = Vehicle.bike(manufacturer: "HD", yearMade: 1987)

if case let .car(manufacrurer, model) = carDetails {
    manufacrurer
}
else {
    "Details are wrong"
}

if case let .bike(manufacturer, yearMade) = bikeDetails {
    yearMade
}
else {
    "Bike Details are wrong"
}

// raw value enumerators

enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.brother.rawValue
FamilyMember.sister.rawValue
FamilyMember.mother.rawValue
FamilyMember.father.rawValue
