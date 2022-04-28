package beginner.linkedlist;

import common.ListNode;
import common.MPrinter;

/// https://leetcode.com/explore/featured/card/top-interview-questions-easy/93/linked-list/560/
public class ReverseLinkedList {
    public ListNode reverseList(ListNode head) {
        if(head== null || head.next == null) {
            return head;
        }
        ListNode prev, next;
        prev = null;
        while (head!= null) {
            next = head.next;
            head.next = prev;
            prev = head;
            head = next;
        }
        MPrinter.print(prev);

        return prev;
    }
}
