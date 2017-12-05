/*
Given an input string, reverse the string word by word. A word is defined as a sequence of non-space characters.

The input string does not contain leading or trailing spaces and the words are always separated by a single space.

For example,
Given s = "the sky is blue",
return "blue is sky the".

Could you do it in-place without allocating extra space?

Related problem: Rotate Array
*/

class Solution {
    
    func reverseWords(_ str: inout [Character]) {
        var start = 0
        var end = str.count
        var currEnd = start
        var temp = 0
        
        while start != end {
            //mst &&
            while currEnd != end && str[currEnd] != " " {
                currEnd += 1
            }
            
            temp = currEnd
            currEnd -= 1
            
            while(start < currEnd) {
                var temp = str[start]
                str[start] = str[currEnd]
                str[currEnd] = temp
                start += 1
                currEnd -= 1
            }
            
            if (temp == end) {
                break
            }
            
            start = temp + 1
            currEnd = temp + 1
        }
        
        start = 0
        end = str.count - 1
        while (start < end) {
            var temp = str[start]
            str[start] = str[end]
            str[end] = temp
            start += 1
            end -= 1
        }
    }
}