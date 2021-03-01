//: [Previous](@previous)

import Foundation


func printAllPermutations(string: String, current: String = "") {
    // Create an array of the supplied string
    let array = Array(string)
    // get it's count for our loop
    let length = string.count
    
    if length == 0 {
        // when the length is 0, we have found a permutation
        print(current)
    } else {
        // otherwise, continue looping through the supplied word
        for letter in 0..<length {
            // get the letters before the index (already checked)
            let left = String(array[0 ..< letter])
            // get the letters after the index (to be chcked)
            let right = String(array[letter+1 ..< length])

            // add the left and right strings together
            printAllPermutations(string: left + right, current: current + String(array[letter]))
        }
    }
    
    
}

printAllPermutations(string: "apples")
print(count)
//: [Next](@next)
