//: [Previous](@previous)

import Foundation

/// 1480. Running Sum of 1d Array
/// https://leetcode.com/problems/running-sum-of-1d-array/?envType=study-plan&id=level-1

func runningSum(_ nums: [Int]) -> [Int] {
    print("sdf")
    var result: [Int] = []
    for i in 0..<nums.count {
        if i == 0 {
            result.append(nums[i])
            continue
        }
        result.append( nums[i] + result[i-1])
    }
    return result
}

let numbers = [1,2,3,4,5,5]
runningSum(numbers)

/// 724. Find Pivot Index
/// https://leetcode.com/problems/find-pivot-index/?envType=study-plan&id=level-1


//: [Next](@next)
