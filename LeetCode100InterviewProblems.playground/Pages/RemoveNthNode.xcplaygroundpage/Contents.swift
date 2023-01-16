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
    var dummyHead: ListNode? = ListNode(0)
    dummyHead?.next = head
    
    var tempHead = dummyHead?.next
    var count = 0
    
    while(tempHead != nil ) {
        tempHead = tempHead?.next
        count = count+1
    }
    
    print(count)
    tempHead = dummyHead
    for _ in 0 ..< count-n {
        tempHead = tempHead?.next
    }
    
    tempHead?.next = tempHead?.next?.next
    
    return dummyHead?.next
    
}

func removeNthFromEndImproved(_ head: ListNode?, _ n: Int) -> ListNode? {
    var dummyHead: ListNode? = ListNode(0)
    dummyHead?.next = head
    
    var slow = dummyHead
    var fast = dummyHead
    
    for _ in 0...n {
        fast = fast?.next
    }
    
    while(fast != nil) {
        slow = slow?.next
        fast = fast?.next
    }
    
    slow?.next = slow?.next?.next
    
    return dummyHead?.next
    
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
//head.next = ListNode(2)
//head.next?.next = ListNode(3)
//head.next?.next?.next = ListNode(4)
var output = removeNthFromEndImproved(head, 1)
printNode(node: output)
//: [Next](@next)
