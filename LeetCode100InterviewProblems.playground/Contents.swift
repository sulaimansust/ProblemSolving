import UIKit

var greeting = "Hello, playground"

var numberMap = [
    "I" : 2,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
]

func romanToInt(_ s: String) -> Int {
    
    var numberMap = [
        "I" : 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    
    let characters = Array(s)
    
    var sum = 0
    var calculateWithPrevious = false
    
    for index in 0..<characters.count {
        let currentValue = numberMap[String(characters[index])]!
//        print("current value: \(currentValue)")
        if calculateWithPrevious {
            let previousValue = numberMap[String(characters[index-1])]!
            sum = sum + currentValue - previousValue
//            print("sum: \(sum)")
            calculateWithPrevious = false
            continue
        }
        
        var nextValue = 0
        if index + 1 < characters.count {
            nextValue = numberMap[String(characters[index+1])]!
        }
        if currentValue >= nextValue {
            sum += currentValue
//            print("sum 2: \(sum)")
        } else {
            calculateWithPrevious = true
        }
//        print("=====")
    }
    
    return sum
}


let s = "XXVIII"
romanToInt(s)
