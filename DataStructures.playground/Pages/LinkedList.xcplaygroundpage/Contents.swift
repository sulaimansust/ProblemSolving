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
    private var head: Node?
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

    
    func printAll() {
        var tempHead = head
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

    
}

//MARK: - SinglyLinked list

var linkedList = SinglyLinkedList(Node(1))

linkedList.insert(2)
linkedList.insert(3)
linkedList.insert(4)
linkedList.insert(5)
linkedList.insert(6)
//linkedList.insert(7)
//linkedList.delete(7)
linkedList.printAll()
linkedList.findMiddleNode()
print("Length: \(linkedList.length())")
//print("------>")
//linkedList.makeLoop(8)
//linkedList.findLoop()




//: [Next](@next)
