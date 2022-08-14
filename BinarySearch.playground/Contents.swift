import UIKit

/**
 returns the index of the target element in a sorted array, return nil when the element does not exist in the array.
 */
func binarySearch<Element: Comparable>(for value: Element, in values: [Element]) -> Int? {
    guard !values.isEmpty else { return nil }
    
    var startIndex = 0
    var endIndex = values.count-1
    
    while startIndex <= endIndex {
        let midIndex = (startIndex+endIndex)/2
        let curr = values[midIndex]
        if value > curr {
            startIndex = midIndex+1
        } else if value < curr {
            endIndex = midIndex-1
        } else {
            return midIndex
        }
    }
    
    return nil
}

// usage cases
let integerArr = [1, 2, 3, 5, 10, 18, 20, 32, 48, 52, 64, 70]

// usage case 01: returns index 4 for the integer 10
let integerValOne = 10
let integerResultOne = binarySearch(for: integerValOne, in: integerArr)
assert(4 == integerResultOne!)
print(
    integerResultOne != nil ?
    "The integer \(integerValOne) is found at index \(integerResultOne!) in \(integerArr) \n"
    : "The integer \(integerValOne) is not exist in \(integerArr) \n"
)


// usage case 02: returns nil for the integer 72
let integerValTwo = 72
let integerResultTwo = binarySearch(for: integerValTwo, in: integerArr)
assert(nil == integerResultTwo)
print(
    integerResultTwo != nil ?
    "The integer \(integerValTwo) is found at index \(integerResultTwo!) in \(integerArr) \n"
    : "The integer \(integerValTwo) is not exist in \(integerArr) \n"
)

// usage case 03: returns index 7 for the double 32.8
let doubleVal = 32.8
let doubleArr = [1.2, 2.5, 3.0, 5.3, 10.6, 18.2, 20.3, 32.8, 48.0, 52.0, 64.2, 70.9]
let doubleResult = binarySearch(for: doubleVal, in: doubleArr)
assert(7 == doubleResult!)
print(
    doubleResult != nil ?
    "The double \(doubleVal) is found at index \(doubleResult!) in \(doubleArr) \n"
    : "The double \(doubleVal) is not exist in \(doubleArr) \n"
)

// usage case 04: returns index 3 for the letter D
let letterD = "D"
let letterArr = ["A", "B", "C", "D", "E", "F", "G", "H"]
let letterResult = binarySearch(for: letterD, in: letterArr)
assert(3 == letterResult!)
print(
    letterResult != nil ?
    "The string \(letterD) is found at index \(letterResult!) in \(letterArr)"
    : "The string \(letterD) is not exist in \(letterArr)"
)
