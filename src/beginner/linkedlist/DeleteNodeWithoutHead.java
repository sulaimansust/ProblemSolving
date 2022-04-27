package beginner.linkedlist;

import common.ListNode;
/// https://leetcode.com/explore/featured/card/top-interview-questions-easy/93/linked-list/553/
public class DeleteNodeWithoutHead {
    public void deleteNode(ListNode node) {
        ListNode next = node.next;
        node.val = node.next.val;
        ListNode nextOfNext = next.next;
        if(nextOfNext!= null) {
            node.next = nextOfNext;
            next.next = null;
        } else {
            node.next = null;
        }
    }
}
