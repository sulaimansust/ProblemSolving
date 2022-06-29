//: [Previous](@previous)

import Foundation


var values = [64,25,12,22,11]

class SelectionSort {
    func selectionSort( values: inout  [Int]) {
        print("Original values: \(values)")
        for i in 0..<values.count-1 {
            var index = i;
            for j in i+1 ..< values.count {

                if values[index] > values[j] {
                    index = j;
                }
            }
            let temp = values[i];
            values[i] = values[index];
            values[index] = temp;
        }
        print(values)
    }
}
//selectionSort(values: values)
//print(values)
//values
let sort = SelectionSort()
sort.selectionSort(values: &values)
values

//: [Next](@next)
