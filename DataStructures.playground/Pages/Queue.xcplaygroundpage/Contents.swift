//: [Previous](@previous)

import Foundation


struct Queue<E> {
    var elements: [E] = []
    
    mutating func enqueue(_ value: E) {
        elements.append(value)
    }
    
    mutating func dequeue() -> E {
        return elements.removeFirst()
    }
    
    func printAll() {
        for element in elements {
            print(element)
        }
    }
}


var queue = Queue<Int>()

queue.enqueue(1)
queue.enqueue(2)
queue.dequeue()
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)
queue.dequeue()



queue.printAll()

//: [Next](@next)
