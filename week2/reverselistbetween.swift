/*
Reverse a linked list from position m to n. Do it in-place and in one-pass.

For example:
Given 1->2->3->4->5->NULL, m = 2 and n = 4,

return 1->4->3->2->5->NULL.

Note:
Given m, n satisfy the following condition:
1 ≤ m ≤ n ≤ length of list.
*/

func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        var head = head
        
        if head == nil || m >= n {
            return head
        }
        
        var current = head
        var index = 1
        var start: ListNode? = nil
        var previousToStart: ListNode? = nil
        
        while current != nil {
            if index == m {
                start = current
                break
            }
            previousToStart = current
            index += 1
            current = current?.next
        }
        
        var end: ListNode? = nil
        while current != nil {
            if index == n {
                end = current
                break
            }
            index += 1
            current = current?.next
        }
        var nextToEnd = end?.next
        
        if start == nil || end == nil {
            return head
        }
        
         var previous: ListNode? = nil
        current = start
        repeat {
            var temp = current?.next
            current?.next = previous
            previous = current
            current = temp
        } while previous !== end
        
        if previousToStart != nil {
            previousToStart?.next = end
        } else {
            head = end
        }
     
        start?.next = nextToEnd
        
        return head
    }
}