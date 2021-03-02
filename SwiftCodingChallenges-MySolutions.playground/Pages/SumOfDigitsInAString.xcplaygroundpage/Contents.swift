//: [Previous](@previous)

import Foundation

/// Challenge 24
/// Finds digits in a string and sums them to produce a final value
/// Uses components to find split the string into an array of integer/empty string vals. Uses compactMap to find non-nil int values, then reduces those values into a single number by accumulating the result
/// - Complexity: n + n + n --> O(n)
func sumDigitsInString(string: String) -> Int {
    string
        .components(separatedBy: CharacterSet.decimalDigits.inverted) // O(n)
        .compactMap { Int(String($0)) } // O(n)
        .reduce(into: 0) { accumulatedValue, value in accumulatedValue += value } // O(n)
}

print(sumDigitsInString(string: "a1b2c3"))
print(sumDigitsInString(string: "a10b20c30"))


//: [Next](@next)
