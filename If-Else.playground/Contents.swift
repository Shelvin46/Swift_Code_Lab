import Foundation



let orangesAreOrange = true
let turnipsAreDelicious = false
 
if orangesAreOrange && turnipsAreDelicious {
    print("both are true")
}
else{
    print("any of this true")
}
let http404Error = (404, "Not Found")



let myAge = 20
let yourAge = 22

if myAge > yourAge {
    
    print("Im older than you")
}
else if myAge < yourAge {
    
    print("Im younger than you")
    
}
else{
    print("ohh hey we are the same age")
    
}


var enviornment = "development";
var maximunNumberOfLoginAttempt: Int?;
  
if maximunNumberOfLoginAttempt != nil {
    
    maximunNumberOfLoginAttempt = 20

}else{
print("its nill")
}

// if else condition example in swift

if enviornment == "development" {
    maximunNumberOfLoginAttempt = 20;
}else{
    maximunNumberOfLoginAttempt = 10;
}



var serverResponseCode: Int?

serverResponseCode = 404
if serverResponseCode != nil {
    
    print("inside not nill")
    
}else{
    print("indise nill")
}
// actions and the statement conditions can be done in if condition

if let number1 = Int("10"){
    if let number2 = Int("20") {
        if number1>number2 {
            print("number one is higest number")
            
        }else{
            
            print("number two is highest number")
        }
    
    }
}

