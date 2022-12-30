//: [Previous](@previous)

import Foundation

func climbStairs(_ n: Int) -> Int {
    if  n <= 2 { return n }
    var prev = 1
    var next = 2
    
    for item in 3...n {
        let  sum = prev + next
        prev = next
        next = sum
        print(" item \(item) prev: \(prev) next: \(next)")

    }
    return next
}

climbStairs(5)

//: [Next](@next)
