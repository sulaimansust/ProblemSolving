import UIKit

class Node {
    var value: Int
    var next: Node?
    var prev: Node?
    
    init(_ value: Int) {
        self.value = value
    }
}

func insert(_ value: Int, _ head: Node?) {
    var tempHead = head
    while(tempHead?.next != nil) {
        tempHead = tempHead?.next
    }
    var newNode = Node(value)
    tempHead?.next = newNode
    newNode.prev = tempHead
    
}

func printAll( _ head: Node) {
    var tempHead: Node? = head
    while(tempHead != nil) {
        print(tempHead!.value)
        tempHead = tempHead?.next
    }
}


var head = Node(1)
insert(2, head)
insert(3, head)
insert(4, head)
insert(5, head)

printAll(head)
