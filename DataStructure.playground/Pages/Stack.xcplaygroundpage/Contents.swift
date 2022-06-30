//: [Previous](@previous)

import Foundation

struct Stack<E> {
    
    var items:[E] = []

    mutating func push(item: E) {
        items.append(item)
    }
    
    mutating func pop() -> E {
        return items.removeLast()
    }
    
}

var stack = Stack<Int>()

stack.push(item: 2)
stack.push(item: 3)
stack.items
stack.pop()

//: [Next](@next)
