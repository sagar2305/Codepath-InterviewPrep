/*
Given a singly linked list, determine if it is a palindrome.

Follow up:
Could you do it in O(n) time and O(1) space?


*/

class Solution {
    
    func halfListLength(_ head: ListNode?) -> Int {
        var length = 0
        var current = head
        while current != nil {
            length += 1
            current = current?.next
        }
        
        return length / 2
    }
    
    // 1->2->2->1->nil
// 1->2->2<-1
      //  ->
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        let halfLength = halfListLength(head)
        if halfLength < 1 { //vimp < 2 will return true for [1 2]
            return true
        }
        
        //reverse the second half of the linked list
        var current = head
        var previous: ListNode? = nil
        var index = 0
        
        while current != nil {
            index += 1
            if index == halfLength {
                previous = current 
                break
            }
            current = current?.next
        }
        
        current = current?.next
        while current != nil {
            var temp = current?.next
            current?.next = previous
            previous = current
            current = temp
        }
        
        var start = head
        var end = previous
        
        index = 0
        while index < halfLength {
            if start?.val == end?.val {
                start = start?.next
                end = end?.next
                index += 1
            } else {
                return false
            }
        }
        
        return true
    }
}