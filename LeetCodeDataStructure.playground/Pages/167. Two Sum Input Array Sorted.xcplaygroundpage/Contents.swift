//: [Previous](@previous)

import Foundation


func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    for i in 0 ..< numbers.count {
        for j in 0..<numbers.count {
            if numbers[i] + numbers[numbers.count - j - 1] == target && i != numbers.count - j - 1 {
                return [i+1,numbers.count - j]
            }
        }
    }
    return []
}

var numbers = [2,7,11,15]

twoSum(numbers, 9)


//: [Next](@next)
