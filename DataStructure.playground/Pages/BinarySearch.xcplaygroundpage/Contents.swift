//: [Previous](@previous)

import Foundation

let values = [1,3,4,5,7,8,9,11,13,14,15,16]


func binarySearch(data: [Int], key: Int ) -> Int {
    var low = 0
    var high = data.count-1


    while(low < high) {
        let mid = (low + high) / 2
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

//for i in 0..<19 {
//    binarySearch(data: values, key: i)
//    print("count is: \(i)")
//}

func binarySearchUsingRecursion(values: [Int], key: Int, low: Int, high: Int) -> Int {
    if low >= high {
        return -1
    }
    let mid = (low + high)/2
    if values[mid] == key {
        return mid
    }
    if values[mid] > key {
        return binarySearchUsingRecursion(values: values, key: key, low: low, high: mid-1)
    } else {
        return binarySearchUsingRecursion(values: values, key: key, low: mid + 1, high: high)
    }
}

let x = binarySearchUsingRecursion(values: values, key: 17, low: 0, high: values.count)

//for i in 0..<19 {
//    let x = binarySearchUsingRecursion(values: values, key: i, low: 0, high: values.count)
//    print("count is: \(i) ")
//    print(x != -1 ? "Found": "Not found")
//}
//: [Next](@next)
