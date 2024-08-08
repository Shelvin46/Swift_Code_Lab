


import Foundation
//
//var greetinHellog = "Hello, playground"
//print(greeting)



 

 
let orangesAreOrange = true
let turnipsAreDelicious = false
 
if orangesAreOrange && turnipsAreDelicious {
    print("both are true")
}
else{
    print("any of this true")
}
let http404Error = (404, "Not Found")

// tuple example in swift
//Tuples group multiple values into a single compound value. The values within a
//tuple can be of any type and don’t have to be of the same type as each other.

let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")
// Prints "The status code is 404"

print("The status message is \(statusMessage)")
// we can access only one value from group of value

let (newStatusCode, _) = http404Error

print(newStatusCode)
 // directly we can also access specific value

print(http404Error.0)
// also we can name the each value present in the tuple

let http200Status   = (successStatusCode :200, message:"Ok")

print(http200Status.message)

// converting a string into integer

let number = 10;
let convertNumberIntoString = String(number);
 print(convertNumberIntoString)
//declaring the value as nill



// declaring a value as null in the execute time checking the vaue is nil according to that assigning a value into that

let name: String? = nil
let greeting = "Hello, " + (name ?? "friend") + "!"
print(greeting)


var a = "";

a="sfgjdslfhg";
debugPrint(a)


var names = Array<Int>();

names.append(10)
names.append(20)
names.append(30)
names.append(40)

for name in names {
    print(name)
}




var myDictionary: [String: Int] = [:]

myDictionary["name1"] = 4;
myDictionary["name2"] = 5;
myDictionary["name3"] = 6;
myDictionary["name4"] = 7;

for(name, count) in myDictionary {
    
    print("\(name) have\(count)")

    
}










