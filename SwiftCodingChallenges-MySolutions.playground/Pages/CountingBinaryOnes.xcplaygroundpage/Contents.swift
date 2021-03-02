//: [Previous](@previous)

import Foundation

/// Challenge 21
/// Finds the integers with matching ones in binary format for both the next highest number and the next lowest number, or returns nil
/// - Parameters: int (Int) of the number to find suitable matches for
/// - Returns: A tuple of optional ints (int?, int?) representing the next highest number with the same amount of binary ones and the next lowest number respectively
func findMatchingBinaryOnes(_ int: Int) -> (Int?, Int?) {
    /// Convert to base 2 & count occurrences of "1"
    /// - Returns: The count of ones
    func countOnes(_ int: Int) -> Int {
        // Neat way to convert an int to binary representation and count the ones using .reduce(into:)
        // Note that we could use filter since we don't need a count on the zeroes, but I like to extrapolate this problem to a real world scenario where I may need to check various existing elements in the result, so using this solution is slightly different that what could be achieved answering this question
        String(int, radix: 2).reduce(into: [:]) { counts, letter in counts[letter, default: 0] += 1 }["1"] ?? 0
    }
    
    var positiveIncrement = int + 1
    var negativeIncrememt = int - 1
    
    var nextHighest: Int?
    var nextLowest: Int?
    
    let requiredOnes = countOnes(int)
    
    // The complexity of this loop does end up being O(n^2) as most methods that operate on strings are also linear. There may be no way to avoid O(n^2) in this problem, as each iteration of the loop requires you to parse a new number into binary - which, based on my current thinking, will always require a nested loop.
    while (nextHighest == nil || nextLowest == nil) {
        // break the loop if we have not found a suitable number within the range
        if positiveIncrement > Int.max && negativeIncrememt < Int.min {
            break
        }
        
        // Compare the number of ones in the high number & set if appopriate
        if nextHighest == nil && countOnes(positiveIncrement) == requiredOnes {
            nextHighest = positiveIncrement
        }
        
        // Compare the number of ones in the low number & set if appropriate
        if nextLowest == nil && countOnes(negativeIncrememt) == requiredOnes {
            nextLowest = negativeIncrememt
        }
        
        // increment our counters
        positiveIncrement += 1
        negativeIncrememt -= 1
    }
    
    return (nextHighest, nextLowest)
}

// expected result (17, 10)
print(findMatchingBinaryOnes(12))
//: [Next](@next)
