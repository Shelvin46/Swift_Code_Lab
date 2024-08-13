import Foundation

// Generics are basically a code that is used to avoid or eliminate duplicate codes

func perform(_ op: (Int, Int) -> Int, on lhs: Int, and rhs: Int) -> Int {
    op(lhs, rhs)
}

perform(+, on: 5, and: 5)
perform(-, on: 10, and: 5)


// common Numeric Data type

func performNumeric<N: Numeric>(_ op: (N, N) -> N, on lhs: N, and rhs: N) -> N {
    op(lhs, rhs)
}

performNumeric(+, on: 10, and: 20)
performNumeric(+, on: 10.2, and: 10.5)

// example of generics in struct

protocol CanJump {
    func jumb()
}

protocol CanRun {
    func run()
}

struct Execute: CanRun, CanJump {
    func run() {
        "This is run function...."
    }
    
    func jumb() {
        "This is jump function...."
    }
    
    func jumbAndRun<T: CanJump & CanRun>(value: T) {
        value.jumb()
        value.run()
    }
}

var instanceOfExecute = Execute()
instanceOfExecute.jumbAndRun(value: instanceOfExecute)

