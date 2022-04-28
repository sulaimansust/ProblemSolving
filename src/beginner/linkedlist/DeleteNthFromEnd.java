package beginner.linkedlist;

import common.ListNode;
/// https://leetcode.com/explore/featured/card/top-interview-questions-easy/93/linked-list/603/
public class DeleteNthFromEnd {

    public ListNode removeNthFromEnd(ListNode head, int n) {
        ListNode copyHead = head;
        ListNode prev;
        while (copyHead != null) {
            prev = copyHead;
            ListNode temp = copyHead;
            for(int i = 0; i<n; i++) {
                temp = temp.next;
            }
            if(temp.next == null) {
                prev.val = prev.next.val;
                ListNode next = prev.next;
                prev.next.next = null;
                prev.next = next;
                break;
            }
            copyHead = copyHead.next;
        }

        return  head;
    }
}
