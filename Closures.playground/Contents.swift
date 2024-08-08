import Foundation

// Closures are special type of functions that are created in line so that you can actually pass then
// to another function for instance and they can hold a function so you could you could pretty much say that
// there are function it can hold reference
// Closures can capture and store references to any constants and variables from the context in which they are defined, which is known as closing over those constants and variables


//func add(_ lhs : Int , _ rhs : Int) ->Int {
//     lhs +  rhs
//}


let add: (Int, Int) -> Int = {
    (lhs : Int, rhs : Int) -> Int in
    lhs + rhs
}


add(30,20)


func custonAdd(_ lhs : Int, _ rhs : Int, using function: (Int, Int) -> Int) -> Int{
    function(lhs ,rhs)
}

// way 1 call
//custonAdd(20, 30, using: {(lhs, rhs) -> Int in
//    lhs + rhs
//})

// way 2 call
custonAdd(20, 30, using: {$0 + $1})

// another example for closures

var ages = [30,50, 10, 20,14,23]
// way 1
//ages.sort(by: {(lhs: Int, rhs: Int) -> Bool in
//    
//    lhs < rhs
//})

// way 2
ages.sort(by: <)
// sorted array
debugPrint(ages)


func addValue(_ value: Int) -> Int {
    value + 50
}


func doAddition(on value: Int, using function: (Int) -> Int) -> Int{
    function(value)
}


doAddition(on: 50, using: addValue(_:))
