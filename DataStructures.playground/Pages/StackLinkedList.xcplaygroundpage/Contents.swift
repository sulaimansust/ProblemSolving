//: [Previous](@previous)

import Foundation

class Node{
    
    var value: Int
    var next: Node?
    init(_ value: Int) {
        self.value = value
    }
}


struct StackLinkedList{
    private var head: Node?
    
    
    mutating func push(_ value: Int) {
        let node = Node(value)
        if head == nil {
            head = node
            return
        }
        var tempHead = head
        while(tempHead?.next != nil ) {
            tempHead = tempHead?.next
        }
        tempHead?.next = node
    }
    
    mutating func pop() -> Int? {
        var current = head
        var next = head?.next
        
        if next == nil {
            head = nil
            return current?.value
        }
        while(next != nil && next?.next != nil) {
            current = next
            next = next?.next
        }
        current?.next = nil
        return next?.value
    }
    
    func printAll() {
        var tempHead = head
        while(tempHead != nil ) {
            print(tempHead!.value)
            tempHead = tempHead?.next
        }
    }
}

var stack = StackLinkedList()
stack.push(1)
stack.push(2)

stack.push(3)
stack.push(4)

stack.push(5)

stack.pop()

stack.push(6)
stack.printAll()


//: [Next](@next)
