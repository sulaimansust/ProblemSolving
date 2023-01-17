//: [Previous](@previous)

import Foundation


struct Stack<E>{
    private var elements: [E] = []
    
    mutating func push(_ element: E) {
        self.elements.append(element)
    }
    
    mutating func pop() -> E {
        return self.elements.removeLast()
    }
    
    mutating func peek() -> E {
        guard let element = elements.last else {
            fatalError("This stack is empty.")
        }
        return element
    }
    
    func printStack() {
        for item in elements {
            print(item)
        }
    }
}





var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.printStack()
//: [Next](@next)
