/*

Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.


Example:

Given the sorted array: [-10,-3,0,5,9],

One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:

      0
     / \
   -3   9
   /   /
 -10  5

*/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    
    func constructBST(_ nums: [Int], _ low: Int, _ high: Int) -> TreeNode? {
        if high < low {
            return nil
        }
        
        var low = low
        var high = high
        var mid = low + (high - low)/2
        
        var node = TreeNode(nums[mid])
        node.left = constructBST(nums, low, mid - 1)
        node.right = constructBST(nums, mid + 1, high)

        return node
    }
    
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        
        var low = 0
        var high = nums.count - 1
        
        return constructBST(nums, low, high)
    }
}