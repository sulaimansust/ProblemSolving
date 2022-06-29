//: [Previous](@previous)

import Foundation

let values = [1,3,4,5,7,8,9,11,13,14,15,16]


func binarySearch(data: [Int], key: Int ) -> Int {
    var low = 0
    var high = data.count-1


    while(low < high) {
        var mid = (low + high) / 2
        print("low: \(low) high: \(high) mid: \(mid)")
        if data[mid] == key {
            print("Data found at \(mid)")
            return mid
        }
        if data[mid] > key {
            high = mid-1
        }
        if data[mid] < key {
            low = mid+1
        }
    }
    print("Data not found!!")
    return -1
}

for i in 0..<19 {
    binarySearch(data: values, key: i)
    print("count is: \(i)")
}
//: [Next](@next)
