/*
Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.

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

/*
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3
*/

class Solution {
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        /*
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3
*/
        
        guard let head = head else {
            return nil
        }
        
        var current: ListNode? = head
        
        // while current?.next != nil {
        //     if var previous = previous, current?.val != previous.val {
        //         previous.next = current
        //         previous = current!
        //     } 
        //     current = current?.next
        // }
        // previous?.next = nil
        
        while current?.next != nil {
            if current?.val == current?.next?.val {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        
        return head
    }
}