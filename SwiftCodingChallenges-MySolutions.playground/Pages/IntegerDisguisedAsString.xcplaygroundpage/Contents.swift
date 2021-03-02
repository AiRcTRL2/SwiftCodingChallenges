//: [Previous](@previous)

import Foundation

/// Challenge 23
/// Simple function that tests whether a string is typecastable to Int. If so, it's an int disguised as a string.
/// - Returns: A boolean indicating whether the string is an int or not
/// An interesting point made in the book was - how would you deal with non-English numerals? The answer is found in using Apple's decimalDigit character set (inverted) and using the methad .rangeOfCharacter to test whether such values exist in the string. This should then apply to all language numerals that Apple supports.
func disguisedInteger(string: String) -> Bool {
    Int(string) != nil
}

print(disguisedInteger(string: "1"))
print(disguisedInteger(string: "1.01"))

//: [Next](@next)
