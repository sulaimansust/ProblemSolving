package beginner.linkedlist;

import common.ListNode;

/// https://leetcode.com/explore/featured/card/top-interview-questions-easy/93/linked-list/771/
public class MergeTwoSortedList {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        if(list1== null) {
            return  list2;
        } else if (list2 == null) {
            return  list1;
        }
        ListNode head ;
        if(list1.val > list2.val) {
            head = list2;
            list2 = list2.next;
        } else {
            head = list1;
            list1 = list1.next;
        }
        ListNode savedHead = head;
        while (list1!=null || list2!=null) {
            if(list1 == null ) {
                head.next = list2;
                list2 = list2.next;
            } else if (list2 == null) {
                head.next = list1;
                list1 = list1.next;
            } else {
                if(list1.val > list2.val) {
                    head.next = list2;
                    list2 = list2.next;
                } else {
                    head.next = list1;
                    list1 = list1.next;
                }
            }
            head = head.next;
        }

        return savedHead;
    }
}
