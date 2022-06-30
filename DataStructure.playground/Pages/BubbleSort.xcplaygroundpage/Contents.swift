//: [Previous](@previous)

import Foundation

var values = [64,25,12,22,11]

class BubbleSort{
    func bubbleSort(values: inout [Int]) {
        for i in 0..<values.count {
            for j in 0..<values.count-i-1 {
                if (values[j] > values[j+1]) {
                    let temp = values[j]
                    values[j] = values[j+1]
                    values[j+1] = temp
                }
            }
        }
    }
}
let sort = BubbleSort()
sort.bubbleSort(values: &values)
values




//: [Next](@next)
