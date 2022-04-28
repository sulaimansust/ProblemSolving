package beginner;

import beginner.linkedlist.DeleteNthFromEnd;
import common.ListNode;
import common.MPrinter;

public class MainLinkedList {
    public static void main(String[] args) {
        ListNode head = createSinglyLinkedList(5);
        MPrinter.print(head);
        DeleteNthFromEnd deleteNthFromEnd = new DeleteNthFromEnd();
        deleteNthFromEnd.removeNthFromEnd(head,2);
        MPrinter.print(head);
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
