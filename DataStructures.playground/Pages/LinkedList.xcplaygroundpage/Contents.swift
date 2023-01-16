//: [Previous](@previous)

import Foundation


class Node {
    var value: Int
    var next: Node?
    init(_ value: Int) {
        self.value = value
    }
}

//MARK: - SinglyLinked list

var head = Node(1)

func insert(head: Node, node: Node) {
    var tempHead: Node = head
    while(tempHead.next != nil) {
        tempHead = tempHead.next!
    }
    tempHead.next = node
    
}

func printAll( _ head: Node) {
    var tempHead: Node? = head
    while(tempHead != nil) {
        print(tempHead!.value)
        tempHead = tempHead?.next
    }
}

insert(head: head, node: Node(2))
insert(head: head, node: Node(3))
insert(head: head, node: Node(4))
insert(head: head, node: Node(5))


printAll(head)


//: [Next](@next)
