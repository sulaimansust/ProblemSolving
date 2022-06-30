//: [Previous](@previous)

import Foundation


struct Queue<E> {
    var elements:[E] = []
    
    mutating func enqueue(element: E) {
        elements.append(element)
    }
    mutating func dequeue() -> E? {
        if elements.isEmpty {
            return nil
        }
        return elements.removeFirst()
    }
}

var queue = Queue<Int>()
queue.enqueue(element: 1)
queue.enqueue(element: 2)
queue.enqueue(element: 3)
queue.elements
queue.dequeue()
queue.dequeue()
queue.elements

//: [Next](@next)
 
