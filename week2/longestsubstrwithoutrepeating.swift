/*
Given a string, find the length of the longest substring without repeating characters.

Examples:

Given "abcabcbb", the answer is "abc", which the length is 3.

Given "bbbbb", the answer is "b", with the length of 1.

Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
*/


class Solution {
    
    // abcabcbb
    
    /*
    maintain a dictionary of characters. Each time we see a character, we are going to set that character position in the dictionary as value.
    
    If the character position already has a value != -1, it means we encountered it before. 
    
    If we did not encounter that position before, we set that position index and increment the current length. If we did encounter that character before, we need to check igf that char is part of current substring. 
    
    If it is - we adjust the max length if current is > max. We then reduce the current length by the index after the character and continue
    
    If it is not - we just increment the current length and continue
    */
    
    // abcabcbb
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let charArray = Array(s)
        // var charIndexes[26]//chk syntax
        // charIndexes.fill(-1)//chk syntax
        
        // abba - good example
        
        var charMap = [Character: Int]()
        
        var currentLength = 0
        var maxLength = 0
        
        for i in 0..<charArray.count {
            let charIndex = charMap[charArray[i]] 
            if let charIndex = charIndex {
                //check if char is in current substring
                
                var startIndex = i - currentLength
                if charIndex < startIndex {
                    currentLength += 1
                } else {
                    maxLength = maxLength > currentLength ? maxLength : currentLength
                    currentLength = i - charIndex
                }
            } else {
                currentLength += 1
            }
            
            charMap[charArray[i]] = i
        } 
        
        maxLength = maxLength > currentLength ? maxLength : currentLength
        
        return maxLength
    }
}