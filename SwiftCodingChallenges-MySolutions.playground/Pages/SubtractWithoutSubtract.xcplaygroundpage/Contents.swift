//: [Previous](@previous)

import Foundation

/// Challenge 26
/// Subtracts one positive integer from another without using the subtract operator
func subtract(amount: Int, from value: Int) -> Int {
    (1...value).reversed()[amount]
}

/// How would I approach this if negative values were supported?
/// Note: subtract operator is necessary to signify negative value, but is unused for the calculation part of the imagined problem
/// Note 2: We could use the bitwise not operator to flip the bits of the number and add one, which would completely avoid the need to use the - operator when converting the result to the negative form.
/// This function uses a closed range to caluclate the subtraction value. In case of negative values, the closed range is from the start index (the value of our number) to the amount to subtract. It then calculates the negative value by using the distance() function with the parameters of startIndex of the closed range & the index immediately before the endIndex.
/// In case of positive values, the function uses a reversed array from a closed range to 1 to our value, then finds the index of the amount to subtract.
func subtractIncludingNegativeValues(amount: Int, from value: Int) -> Int {
    if amount > value {
        let range = (value...amount)
        return -range.distance(from: range.startIndex, to: range.index(before: range.endIndex))
    } else {
        return (1...value).reversed()[amount]
    }
}

//print(subtract(amount: 5, from: 9))
print(subtractIncludingNegativeValues(amount: 40, from: 30))

//: [Next](@next)
