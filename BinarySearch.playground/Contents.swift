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

