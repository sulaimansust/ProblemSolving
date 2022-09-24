import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    var numberDictionary = [String:Int]()
    for num in nums {
        numberDictionary["\(num)"] =  (numberDictionary["\(num)"] ?? 0) + 1
    }
    for (_,value) in numberDictionary {
        if value > 1 {
            return true
        }
    }
    return false
}

let numbers = [1,2,3,4,3,4,3]
containsDuplicate(numbers)
