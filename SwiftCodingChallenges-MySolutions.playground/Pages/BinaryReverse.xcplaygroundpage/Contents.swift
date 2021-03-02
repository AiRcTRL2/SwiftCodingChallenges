//: [Previous](@previous)

import Foundation

/// Challenge 22
/// Converts an 8 bit integer to it's reversed binary representation
/// - Parameters: int: Int8  An 8-bit integer
/// - Returns: An integer representing the reversed binary representation of the supplied integer
func binaryReverse(_ int: UInt8) -> UInt? {
    // gets the binary representation
    var binary = String(int, radix: 2)
    
    // pads the binary representation to fill 8 bits
//    initial solution
//    while binary.count < 8 {
//        binary.insert("0", at: binary.startIndex)
//    }
    
    // book solution to padding 0s (makes more sense to concatanate two strings rather than do X linear operations)
    let paddedBinary = String(repeating: "0", count: 8-binary.count) + binary
    
    // returns that Int value of the padded binary reversed
    return UInt(String(paddedBinary.reversed()), radix: 2)
}

print(binaryReverse(32))
print(binaryReverse(41))
print(binaryReverse(148))

//: [Next](@next)
