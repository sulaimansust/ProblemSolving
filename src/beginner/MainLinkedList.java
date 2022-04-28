package beginner;

import beginner.linkedlist.DeleteNthFromEnd;
import beginner.linkedlist.MergeTwoSortedList;
import beginner.linkedlist.ReverseLinkedList;
import common.ListNode;
import common.MPrinter;

public class MainLinkedList {
    public static void main(String[] args) {
        ListNode head = createSinglyLinkedList(5);
        ListNode list2 = createSinglyLinkedList(10);
        MPrinter.print(head);

//        DeleteNthFromEnd deleteNthFromEnd = new DeleteNthFromEnd();
//        deleteNthFromEnd.removeNthFromEnd(head,2);
        // solved
//        ListNode newHead = new ReverseLinkedList().reverseList(head);
//
        ListNode newHead = new MergeTwoSortedList().mergeTwoLists(head, list2);
        MPrinter.print(newHead);
    }
    public  static ListNode createSinglyLinkedList(int size) {
        ListNode head = new ListNode(0);
        ListNode currentNode = head;
        for(int i=1; i < size;i++) {
            ListNode newNode = new ListNode(i);
            currentNode.next = newNode;
            currentNode = currentNode.next;
        }
        return  head;
    }
}
