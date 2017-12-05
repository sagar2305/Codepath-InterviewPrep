/*
Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.

Note:
You must not modify the array (assume the array is read only).
You must use only constant, O(1) extra space.
Your runtime complexity should be less than O(n2).
There is only one duplicate number in the array, but it could be repeated more than once.
*/

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        
    // VVIMP - Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive) 
    // each int is between 1 & n
    // input array length is n + 1
        
    /* for each number, find the number at its corresponding index and change the sign. If the sign is already negative, the  number is a duplicate since it was encountered before 
        */
        
        var nums = nums // imp
        for i in 0..<nums.count {
            
            // check if the number is negative; if yes it's a duplicate
            if nums[abs(nums[i])] < 0 {
                //return the abs value of negative vimp
                return abs(nums[i])
            }
            
            nums[abs(nums[i])] = -nums[abs(nums[i])]  //imp abs everywhere
        }
        
        return -1
    }
}