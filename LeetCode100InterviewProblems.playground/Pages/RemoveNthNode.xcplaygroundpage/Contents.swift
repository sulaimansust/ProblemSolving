//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;}
}


func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var tempHead = head
    var forwardHead : ListNode?

    while(tempHead != nil) {

        forwardHead = tempHead
        for i in 1..<n {
            print("executed i = \(i)")
            forwardHead = forwardHead?.next
        }
        if let _ = forwardHead, forwardHead?.next == nil {
            let nodeToDelete = tempHead?.next
            print("executed \(nodeToDelete?.val ?? -1)")

            tempHead?.next = nodeToDelete?.next
            nodeToDelete?.next = nil
            break;
        }
//        else {
//            if tempHead === head {
//                print("else")
//
//                tempHead = tempHead?.next
//                printNode(node: tempHead)
//
//                return tempHead
//            }
//        }
        tempHead = tempHead?.next
    }

    printNode(node: head)
    return head
}

func printNode(node: ListNode? ) {
    print("------>")
    var head = node
    while head != nil {
        print(head?.val ?? 0)
        head = head?.next
    }
}

var head = ListNode(1)
head.next = ListNode(2)
//head.next?.next = ListNode(3)
//head.next?.next?.next = ListNode(4)
removeNthFromEnd(head, 2)
//: [Next](@next)
