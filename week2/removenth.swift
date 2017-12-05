/*
Given a linked list, remove the nth node from the end of list and return its head.

For example,

   Given linked list: 1->2->3->4->5, and n = 2.

   After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:
Given n will always be valid.
Try to do this in one pass.
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

//Given linked list: 1->2->3->4->5, and n = 2.
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        guard let head = head else {
            return nil
        }
        
        var current: ListNode? = head
        var count = 0
        
        while current != nil {
            current = current?.next
            count += 1
        }
        
        if n > count || n < 0 {
            return nil
        }
        
        current = head
        if n == count {
            return current?.next
        }
        
        while current?.next != nil {
            if count == n+1 {
                current?.next = current?.next?.next
                return head
            }   
            
            count -= 1
            current = current?.next
        }
        
        return head
    }
}