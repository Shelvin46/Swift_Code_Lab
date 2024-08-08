import Foundation


func hello(_ helloWorld : String) {
    print(helloWorld);
}

// Returning function
func returnString(string : String) -> String{
    
    return string;
}

// optional function

func greet(name:String?) -> String? {
    if  name != nil {
        return name
        
    }else{
        return nil;
    }
}


//Either parameter functions
// [10,5,6,2,1,9,24]

func minMax(array : [Int]) -> (min : Int, max : Int) {
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    
    for element in array[1..<array.count] {
        
        if element < currentMin {
           currentMin = element
        }
        else if element > currentMax {
            currentMax = element
        }
    }
    
    return (currentMin, currentMax)
}


// in swift we can defince two label for one parameter external and internal
func customAdd(_ internalLabel : Int, externelLabelTwo internelLabelTwo : Int) -> Int {
    
internalLabel + internelLabelTwo;
    
}


print(customAdd( 10, externelLabelTwo: 20))

hello("sdlkhffskd")


// optional functions

func getFullName (firstName : String = "Shelvin" , lastName : String = "Varghese") -> String {
    firstName + " " + lastName
}

getFullName(firstName: "Sheeba" , lastName: "Varghese")
