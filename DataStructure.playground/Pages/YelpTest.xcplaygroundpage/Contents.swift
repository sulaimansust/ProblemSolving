//: [Previous](@previous)

import Foundation

func fizzBuzz(n: Int) -> Void {
    // Write your code here
    for i in 1 ... n {
    if i%3==0 && i%5==0 {
        print("FizzBuzz")
        continue
    }
    if i%3 == 0 {
        print("Fizz")
        continue
    }
    if i%5 == 0 {
        print("Buzz")
        continue
    }
    print(i)
    }
}
fizzBuzz(n: 15)
//: [Next](@next)
