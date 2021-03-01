//: [Previous](@previous)

import Foundation

func randomNumInRange(min: Int, max: Int) -> Int {
    return (min...max).randomElement()!
}

func preferredSolution(min: Int, max: Int) -> Int {
    return Int(arc4random_uniform(UInt32(max - min + 1))) + min
}

//let start = CFAbsoluteTimeGetCurrent()
//print(randomNumInRange(min: 1, max: 5))
//print(CFAbsoluteTimeGetCurrent() - start)

let start2 = CFAbsoluteTimeGetCurrent()
print(preferredSolution(min: 1, max: 5))
print(CFAbsoluteTimeGetCurrent() - start2)

//: [Next](@next)
