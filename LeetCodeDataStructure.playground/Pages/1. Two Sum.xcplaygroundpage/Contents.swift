//: [Previous](@previous)

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    for i in 0..<nums.count {
        for j in 1..<nums.count {
            if nums[i] + nums[j] == target && i != j {
                return [i,j]
            }
        }
    }
    
    return []
}

var numbers = [2,7,11,15]

twoSum(numbers, 9)


//: [Next](@next)
