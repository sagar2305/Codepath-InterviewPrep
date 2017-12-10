/*
Given an array of strings, group anagrams together.

For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"], 
Return:

[
  ["ate", "eat","tea"],
  ["nat","tan"],
  ["bat"]
]
Note: All inputs will be in lower-case.
*/


class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var result = [[String]]()
        
        if strs.count == 0 {
            return result
        }
        
        //mst first sort individual strings
        var newstr = strs
        for i in 0..<newstr.count {
            var string = strs[i]
            string = String(string.sorted())
            newstr[i] = string
        }
        
        
        // or you can just store the old index in a dictionary
        let sorted = newstr.enumerated().sorted(by: {$0.element < $1.element})
        let sortedIndexes = sorted.map{$0.offset}
        newstr = newstr.sorted()
        
        var current = [strs[sortedIndexes[0]]]
        for i in 1..<newstr.count {
            if newstr[i-1] == newstr[i] {
                current.append(strs[sortedIndexes[i]])
            } else {
                result.append(current)
                current = [String]()
                current.append(strs[sortedIndexes[i]])
            }
        } 
        
        result.append(current)
        return result
    }
}