import Foundation

// array collections

var numbers = [1,2,3,4,5];

numbers.append(6)
numbers.count
numbers.first
numbers.map(-)

numbers.insert(7, at: 5)
numbers.insert(contentsOf: [8,9,10], at: 6)
print(numbers)

for value in numbers {
    value
}

// find even numbers
for value in numbers where value % 2 == 0 {
    print(value)
}

// do some operations with array value
// here the each value present in the numbers will multiply with 2
let values = numbers.map { (value: Int) -> Int in
    value * 2
}

print(values)
// returning the value greater than equal to 3
let largerValues = numbers.filter { (value: Int) -> Bool in
    value >= 3
}

print(largerValues)

// Heterogenous array in swift
let heteroArray: [Any] = ["1", 1, "Shelvin", 3]
print(heteroArray)


// Set Collections
var uniqueValues = Set([1,1,2,2,3,4])
// set does not guarantee order
print(uniqueValues)

// Heterogenous Set
// The compactMap Function always return a list of elements
let heteroSetValues: Set<AnyHashable> = ["Shelvin",1, 2, 3, 4]
let intValues = heteroSetValues.compactMap { (value: AnyHashable) -> Int? in
    value as? Int
}

print(intValues)
type(of: intValues)

// How the set contains only unique elements
// Using Hashable concept

struct Person: Hashable {
    let id: UUID
    let name: String
    let age: Int
}

let id = UUID()

let person1 = Person(id: id, name: "Shelvin", age: 20)
let person2 = Person(id: id, name: "Varghese", age: 50)
// Here the two instances are Hashed and it store uniquely
let set: Set<Person> = [person1, person2]

// Hashing a person object using specific id

struct PersonTwo: Hashable {
    let id: UUID
    let name: String
    let age: Int
//     Here the hashing will work with the id if we create two instance with same id
//     it will consider one instance in a set
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (
        lhs: Self,
        rhs: Self
    )   -> Bool  {
        lhs.id == rhs.id
    }
      
    
}

let idTwo = UUID();
let personOne = PersonTwo(id: idTwo, name: "S", age: 2)
let personTwo = PersonTwo(id: idTwo, name: "sdkgdjfk", age: 3)

let setTwo: Set<PersonTwo> = [personOne, personTwo]
setTwo.count

// Dictionary Collection
let userInfo: [String: Any] = [
    "name": "Shelvin",
    "age": 20,
    "address": [
        "lineOne": "Perumadan House",
        "postCode": 1234
    ]
]

print(userInfo)
userInfo["name"]

userInfo.keys
userInfo.values

for element in userInfo {
    print(element.key)
    print(element.value)
}

