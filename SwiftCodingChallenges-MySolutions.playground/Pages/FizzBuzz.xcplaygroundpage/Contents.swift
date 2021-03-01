//: [Previous](@previous)

import Foundation

// prints Fizz for nums divisable by 3, buzz if divisible by 5 and fizz buzz divisible by 3 and five
func fizzBuzz() {
    let range = 1...100
    
    for number in range {
        var string = ""
        
        if number % 3 == 0 {
            string += "Fizz"
        }
        
        if number % 5 == 0 {
            if string.isEmpty == false {
                string += " "
            }
            
            string += "Buzz"
        }
        
        if string.isEmpty == true {
            string += String(number)
        }

        print(string)
    }

}

fizzBuzz()
//: [Next](@next)
