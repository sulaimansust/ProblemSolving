//: [Previous](@previous)

import Foundation

/// 1480. Running Sum of 1d Array
/// https://leetcode.com/problems/running-sum-of-1d-array/?envType=study-plan&id=level-1

func runningSum(_ nums: [Int]) -> [Int] {
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



/// 724. Find Pivot Index
/// https://leetcode.com/problems/find-pivot-index/?envType=study-plan&id=level-1


func pivotIndex(_ nums: [Int]) -> Int {
    
    for i in 0..<nums.count {
        var backwardSum = 0
        var forwardSum = 0
        print("i \(i) \n")
        for j in 1 ..< nums.count {
            var backIndex = i - j < 0 ? nums.count + (i-j) : i-j
            var findex = i+j >= nums.count ? i+j % nums.count : i+j
            
//            if i - j < 0 {
//                backIndex =
//                backwardSum += nums[]
//
//            } else {
//                backwardSum += nums[i-j]
//            }
            print(" bi \(backIndex) fi \(findex)")
            backwardSum += nums[backIndex]
            
//            if (i+j >= nums.count) {
//                forwardSum = forwardSum + 0
//            } else {
//                forwardSum += nums[i+j]
//            }
            forwardSum = nums[findex]
            
        }
        print("fs \(forwardSum) bs \(backwardSum)")
        if forwardSum == backwardSum {
            return i
        }
    }
    return -1
}

let numbers = [1,7,3,6,5,6]
runningSum(numbers)

pivotIndex(numbers)



//: [Next](@next)
