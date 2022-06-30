//: [Previous](@previous)

import Foundation

class InsertionSort {
    
    func sort(values: inout [Int]) {
        for i in 1 ..< values.count {
            print(values)
            let key = values[i]
            var j = i - 1
            while(j>=0 && values[j] > key) {
                values[j+1] = values[j]
                j -= 1
            }
            values[j+1] = key
            print(values)
            print("----")
        }
    }
    
}

var numbers: [Int] = [12,11,13,5,6]
let insertionSort = InsertionSort()
insertionSort.sort(values: &numbers)
numbers

//: [Next](@next)
