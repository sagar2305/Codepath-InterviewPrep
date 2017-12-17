/*
33. Search in Rotated Sorted Array

Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

You are given a target value to search. If found in the array return its index, otherwise return -1.

You may assume no duplicate exists in the array.
*/

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        var start: Int = 0
        var end: Int = nums.count - 1
        
        while start <= end {
            let mid: Int = (start + end) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[start] <= nums[mid] {
                if nums[start] <= target && target <= nums[mid] {
                    end = mid - 1
                } else {
                    start = mid + 1
                }
            } else {
                if nums[mid] <= target && target <= nums[end] {
                    start = mid + 1
                } else {
                    end = mid - 1
                }
            }
        }
        return -1
    }
}