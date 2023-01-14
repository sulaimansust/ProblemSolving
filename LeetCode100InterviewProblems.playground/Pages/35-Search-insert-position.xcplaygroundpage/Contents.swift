//: [Previous](@previous)

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    var startPosition = 0
    var endPosition = nums.count-1
    
    while(startPosition <= endPosition) {
        var midPosition = (startPosition+endPosition)/2
        if nums[midPosition] == target {
            return midPosition
        }
        if nums[midPosition] > target {
            endPosition = midPosition-1
            midPosition = (startPosition+endPosition)/2
        } else {
            startPosition = midPosition+1
            midPosition = (startPosition+endPosition)/2
        }
    }
    
    return startPosition
    
}

var test1 = [1,3,5,6]
let result = searchInsert(test1, 2)
print(result)

//: [Next](@next)
