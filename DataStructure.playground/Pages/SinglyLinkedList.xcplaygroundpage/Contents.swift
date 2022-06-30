//: [Previous](@previous)

import Foundation

class Node {
    var value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
        next = nil
    }
    init(value: Int , nextNode: Node) {
        self.value = value
        self.next = nextNode
    }
}

class SinglyLinkedList{
    var head: Node?
    init(head: Node) {
        self.head = head
    }
    init() {
        head = nil
    }
    
    func add(node: Node) {
        if head == nil {
            head = node
            return
        }
        var temp = head
        while(temp?.next != nil ) {
            temp = temp?.next
        }
        temp?.next = node
    }
    
    func printList() {
        var temp = head
        while(temp != nil ) {
            print(temp!.value)
            temp = temp?.next
        }
        print("--------")
    }
    func deleteHead() {
        if head == nil {
            return
        }
        var temp = head?.next
        head?.next = nil
        head = nil
        head = temp
    }
    
    func deleteTail() {
        if head == nil {
            return
        }
        if head?.next == nil {
            deleteHead()
            return
        }
        var temp = head?.next
        var prev = head
        while(temp?.next != nil){
            prev = temp
            temp = temp?.next
        }
        temp = nil
        prev?.next = nil
    }
}
var linkedList = SinglyLinkedList()
linkedList.add(node: Node(value: 1))
linkedList.add(node: Node(value: 2))
linkedList.add(node: Node(value: 3))
linkedList.add(node: Node(value: 4))

//linkedList.printList()
//linkedList.deleteHead()
linkedList.printList()
linkedList.deleteTail()
linkedList.printList()

//: [Next](@next)
