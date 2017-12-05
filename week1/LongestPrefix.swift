/*
Write a function to find the longest common prefix string amongst an array of strings.

*/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        // [] -> ""
        // ["ab", "abc", "abcd"] -> "ab"
        
        if strs.count == 0 {
            return ""
        }
        
        // first max possible prefix
        var maxPrefixLength = strs[0].count
        
        for str in strs {
            if str.count < maxPrefixLength {
                maxPrefixLength = str.count
            }
        }
        
        var maxSubstring = ""
        
        // check substring
        for i in 0..<maxPrefixLength {
            //imp
            var substring = strs[0][strs[0].startIndex...strs[0].index(strs[0].startIndex, offsetBy: i)]
            
            var match = true
            for j in 1..<strs.count {
                //imp
                var substring1 = strs[j][strs[j].startIndex...strs[j].index(strs[j].startIndex, offsetBy: i)]
                if (substring != substring1) {
                    return maxSubstring
                }
            }
            
                //imp
            maxSubstring = String(substring)
        }
        
        return maxSubstring
    }
}