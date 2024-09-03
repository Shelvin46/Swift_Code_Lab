import Foundation

let firstName: String? = "Shelvin"
let lastName: String? = "Varghese"
let fullName = firstName + lastName
//print(fullName)

// binary infix operator

func + (firstName: String?, lastName: String?) -> String? {
    switch(firstName, lastName) {
    case(.none, .none):
        return nil
    case let (.some(value), .none):
        return value
    case let (.none, .some(value)):
        return value
    default :
        return firstName + lastName
    }
}

let lowerCaseString = "person"
// unary prefix
prefix operator ^
prefix func ^ (value: String) -> String {
    value.uppercased()
}

let upperCase = ^lowerCaseString
print(upperCase)
