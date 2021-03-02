//: [Previous](@previous)

import Foundation

/// Challenge 25
func calculateSquareRoot(number: Int) -> Int? {
    // Cut the number in half as it would definitely be too large past this point
    let midpoint = Int(ceil(Double(number/2)))
    
    // cylce through the values to determine whether the value by itself equals the final number
    for value in 2...midpoint {
        if value * value == number {
            return value
        }
    }
    
    return nil
}

/// Using binary search
/// - Returns: The square root of the number rounded down to the lowest positive integer
func calculateSquareRootSolutionTwo(number: Int) -> Int {
    var leftRangeIndex: Double = 0
    // max search range is half the number + 1
    var rightRangeIndex: Double = Double(number)/2 + 1.0
    
    while leftRangeIndex <= rightRangeIndex {
        // get the mid point
        let tempMidpoint: Double = leftRangeIndex + ((rightRangeIndex - leftRangeIndex)/2)
        // get the rounded down square value of the mid point
        let value: Int = Int(floor(tempMidpoint * tempMidpoint))
        
        // determine if it's equal to our input
        if value == number {
            return Int(floor(tempMidpoint))
        } else if value > number {
            // if result was greater than our input, set the max range value
            rightRangeIndex = tempMidpoint
        } else if value < number {
            // if the result was lesser than our input, set the min range value
            leftRangeIndex = tempMidpoint
        }
    }
    
    return 0
}

//print(calculateSquareRoot(number: 16777216))
print(calculateSquareRootSolutionTwo(number: 16777216))
print(calculateSquareRootSolutionTwo(number: 15))

//: [Next](@next)
