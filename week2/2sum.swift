/*
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
*/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        // saving the complement of encountered number as key and its index as value
        
        // imp syntax
        var numDict = [Int: Int]()
        var result = [Int]()
        
        for i in 0..<nums.count {
            if let index = numDict[nums[i]] {
                result.append(index)
                result.append(i)
                return result
            }
            
            var key = target - nums[i]
            numDict[key] = i
        }
        
        return result
    }
}