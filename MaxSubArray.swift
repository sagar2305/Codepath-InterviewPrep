/*
Find the contiguous subarray within an array (containing at least one number) which has the largest sum.

For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
the contiguous subarray [4,-1,2,1] has the largest sum = 6.
*/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        
        var currentMax = nums[0]
        var max = nums[0]
        
        for i in 1..<nums.count {
            if currentMax + nums[i] > nums[i] {
                currentMax += nums[i]
            } else {
                currentMax = nums[i]
            }
            
            max = currentMax > max ? currentMax : max 
        }
        
        return max
    }
}