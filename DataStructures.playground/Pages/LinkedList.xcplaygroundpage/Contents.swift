//: [Previous](@previous)

import Foundation


class Node{
    
    var value: Int
    var next: Node?
    init(_ value: Int) {
        self.value = value
    }
}


class SinglyLinkedList{
    var head: Node?
    init(_ head: Node) {
        self.head = head
    }
    
    func insert( _ value: Int ) {
        var tempHead = head
        while(tempHead?.next != nil) {
            tempHead = tempHead?.next!
        }
        tempHead?.next = Node(value)
    }
    
    func insert( _ node: Node ) {
        var tempHead = head
        while(tempHead?.next != nil) {
            tempHead = tempHead?.next!
        }
        tempHead?.next = node
    }
    
    func delete(_ value: Int) {
        if (head?.value == value) {
            deleteHead();
            return
        }
        var prev = head
        var current = head?.next
        
        while(current != nil) {
            if current?.value == value {
                var next = current?.next
                prev?.next = next
                current?.next = nil
                break
            }
            prev = current
            current = current?.next
        }
        
    }
    
    func deleteHead() {
        var tempHead = head
        head = head?.next
        tempHead?.next = nil
    }
    
    func length() -> Int {
        var count = 0
        var tempHead = head
        while ( tempHead != nil) {
            count = count + 1
            tempHead = tempHead?.next
        }
        return count
    }

    
    static func printAll(head: Node) {
        var tempHead: Node? = head
        while(tempHead != nil) {
            print(tempHead!.value)
            tempHead = tempHead?.next
        }
    }
    
    func findMiddleNode( ) {
        var currentHead = head
        var forwardHead = head
        
        while(forwardHead  != nil && forwardHead?.next != nil) {
            currentHead = currentHead?.next
            forwardHead = forwardHead?.next?.next
        }
        print("findMiddleNode: \(currentHead!.value)")

    }
    
    func makeLoop(_ value: Int) {
        var node = Node(value)
        self.insert(node)
        node.next = head?.next
    }


    func findLoop() -> Bool{
        var currentHead = head
        var forwardHead = head
        var count = 0
        while(currentHead != nil ) {
            print(count)
            count = count+1
            currentHead = currentHead?.next
            forwardHead = forwardHead?.next?.next
            if currentHead?.value == forwardHead?.value {
                return true
            }
        }
        return false
    }
    
    func reverse() {
        if head?.next == nil {
            return
        }
        var prev: Node? = head
        var next = head?.next
        prev?.next = nil
        
        while( next != nil) {
            let newNext = next?.next
            next?.next = prev
            prev = next
            next = newNext
        }
        head = prev
    }

    
}


func mergeTwoSortedLinkedList(head1: Node, head2: Node) -> Node{
    
    var dummyHead = Node(-1)
    
    var currentHead: Node? = dummyHead
    
    var tempHead1: Node? = head1
    var tempHead2: Node? = head2
    
    while(tempHead1 != nil && tempHead2 != nil) {
        if tempHead1!.value > tempHead2!.value {
            currentHead?.next = tempHead2
            tempHead2 = tempHead2?.next
        } else {
            currentHead?.next = tempHead1
            tempHead1 = tempHead1?.next
        }
        currentHead = currentHead?.next
    }
    while tempHead1 != nil {
        currentHead?.next = tempHead1
        tempHead1 = tempHead1?.next
    }
    
    while tempHead2 != nil {
        currentHead?.next = tempHead2
        tempHead2 = tempHead2?.next
    }

    
    return dummyHead.next!
    
}



//MARK: - SinglyLinked list

var linkedList = SinglyLinkedList(Node(1))
var linkedList2 = SinglyLinkedList(Node(2))

linkedList.insert(3)
linkedList2.insert(3)
linkedList.insert(4)
linkedList2.insert(5)
linkedList.insert(6)
linkedList.insert(7)
linkedList2.insert(8)

//linkedList.reverse()

//SinglyLinkedList.printAll(head: linkedList.head!)
linkedList.findMiddleNode()
//print("Length: \(linkedList.length())")
//print("------>")
//linkedList.makeLoop(8)
//linkedList.findLoop()
var output = mergeTwoSortedLinkedList(head1: linkedList.head!, head2: linkedList2.head!)
print("------>")
SinglyLinkedList.printAll(head: output)


//: [Next](@next)
