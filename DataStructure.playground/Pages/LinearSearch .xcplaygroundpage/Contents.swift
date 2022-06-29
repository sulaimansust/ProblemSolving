//: [Previous](@previous)

import Foundation

let values = [32,12,44,23,535,653,23,53,25]

func linearSearch(values: [Int], key: Int) -> Int {
    for (index,item) in values.enumerated() {
        if item == key {
            print("Data found at \(index)")
            return index
        }
    }
    print("Data not found")
    return -1
}
linearSearch(values: values, key: 25)

//: [Next](@next)
