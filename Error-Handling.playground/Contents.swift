import Foundation

    struct Person {
        let firstName: String?
        let lastName: String?
        
        enum Errors: Error {
            case firstNameNil
            case lastNameNil
            case firstAndLastNameNil
        }
        
        func getFullName() throws -> String {
            if let firstName, let lastName {
                "\(firstName) and \(lastName)"
            }
            else if firstName != nil && lastName == nil {
                throw Errors.lastNameNil
            }
            else if firstName == nil && lastName != nil {
                throw Errors.firstNameNil
            }
            else {
                throw Errors.firstAndLastNameNil
            }
        }
    }
    
    let instance = Person(firstName: "Shelving", lastName: nil);
    
    do {
        try instance.getFullName()
    }
    catch {
        "Got an error = \(error)"
    }
    
    // throwing the exceptions when the time of initializing the values present in the class variables
    
    struct Car {
        let manufacturer: String
        
        enum Errors: Error {
            case invalidManufacturer
        }
        
        init(manufacturer: String) throws {
            if manufacturer.isEmpty {
                throw Errors.invalidManufacturer
            }
            else {
                self.manufacturer = manufacturer
            }
        }
    }
    
    do {
        let carInstance = try Car(manufacturer: "")
    }
    catch Car.Errors.invalidManufacturer {
        "in valid manufacturer"
    }
    
    // calling the error handling functions from single function
    
    struct Dog {
        let isSleeping: Bool
        let isInjured: Bool
        
        enum BarkingErrors: Error {
            case cannotBarkIsSleeping
        }
        
        enum RunningErrors: Error {
            case cannotRunIsInjured
        }
        
        func bark() throws {
            if isSleeping {
                throw BarkingErrors.cannotBarkIsSleeping
            }
            else {
                "barking..."
            }
        }
        
        func running() throws {
            if isInjured {
                throw RunningErrors.cannotRunIsInjured
            }
            else {
                "running...."
            }
        }
        
        func barkAndRun() throws {
            do {
                try bark()
            } catch {
                print(error)
            }
            
            do {
                try running()
            } catch {
                print(error)	
            }
            
        }
    }
    
    let dogInstance = Dog(isSleeping: false, isInjured: true)
    
    do {
        try dogInstance.barkAndRun()
    }
    catch Dog.BarkingErrors.cannotBarkIsSleeping, Dog.RunningErrors.cannotRunIsInjured {
        "the dog is inured so the dog is sleeping"
    }
    
    
    func firstNameAndLastName (firstName: String?, lastName: String?, calculator: (String?, String?) throws -> String? ) rethrows -> String? {
        try calculator (firstName, lastName)
    }
    
    enum NameErrors: Error {
        case firstNameError
        case lastNameError
    }
    
    func + (firstName: String?, lastName: String?) throws -> String? {
        guard let firstName,
              !firstName.isEmpty else {
            throw NameErrors.firstNameError
        }
        guard let lastName,
              !lastName.isEmpty else {
            throw NameErrors.lastNameError
        }
        return "\(firstName) \(lastName)"
    }
    
    do {
        try firstNameAndLastName(firstName: "Shelving", lastName: "Varghese", calculator: +)
    } catch NameErrors.firstNameError {
        "first name is invalid"
    } catch NameErrors.lastNameError {
        "last name is invalid"
    } catch {
        error
    }
    
enum IntegerErrors: Error {
    case notValidInteger(Int)
}


func getInteger(_ int: Int) ->Result<Int,IntegerErrors> {
    guard int > 0 else {
       return Result.failure(IntegerErrors.notValidInteger(int))
    }
    return Result.success(int - 1)
}

func performGetInteger (_ value: Int) {
    switch getInteger(value) {
    case let .success(validValue):
        "Valid value is \(validValue)"
    case let .failure(error):
        "error is \(error)"
    }
}

performGetInteger(0)
performGetInteger(2)

