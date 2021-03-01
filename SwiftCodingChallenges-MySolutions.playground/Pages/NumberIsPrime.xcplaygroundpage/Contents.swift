//: [Previous](@previous)

import Foundation

/// Challenge 20
/// Determine if a number is prime or not
/// - Returns: A bool indicating the result
func numberIsPrime(_ number: Int) -> Bool {
    // check if number is 1 or less
    guard number >= 2 else {
        return false
    }
    
    // exit early if number is 2
    if number == 2 {
        return true
    }
   
    // reduce the search space. Getting the square root of N will give us all possible multiples of N, while significantly reducing search space. That is because anything greater than sqrt N cannot be a multiple of N.
    let sqrtNum = Int(ceil(sqrt(Double(number))))
    
    // find the first value when using modulus against the number leaves no remainder
    for value in 2...sqrtNum {
        if number % value == 0 { return false }
    }
    
    return true
}

print(numberIsPrime(11), numberIsPrime(16777259), numberIsPrime(9))
//: [Next](@next)
