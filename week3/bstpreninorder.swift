/*

105. Construct Binary Tree from Preorder and Inorder Traversal
Given preorder and inorder traversal of a tree, construct the binary tree.

Note:
You may assume that duplicates do not exist in the tree.



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
    
    func findVal(_ inorder: [Int], _ val: Int, _ inLow: Int, _ inHigh: Int) -> Int {
                        print("val = \(val) inLow = \(inLow) inHigh = \(inHigh)")

        for i in inLow...inHigh {
            if inorder[i] == val {
                return i
            }
        }
        
        return -1
    }
    
    func constructTree(_ preorder: [Int], _ preIndex: Int, _ inorder: [Int], _ inLow: Int, _ inHigh: Int) -> TreeNode? {
                                // print("preIndex = \(preIndex) inLow = \(inLow) inHigh = \(inHigh)")

        if inHigh < inLow {
            return nil
        }
        
        if preIndex >= preorder.count {
            return nil
        }
        
        var preIndex = preIndex
        var rootVal = preorder[preIndex]
        // print("rootval = \(rootVal)")
        var index = findVal(inorder, rootVal, inLow, inHigh) 
                print("index = \(index)")

        var root: TreeNode?
        if index != -1 {
            root = TreeNode(rootVal)
            // if inLow <= index - 1 {
                // preIndex += 1
                root?.left = constructTree(preorder, preIndex+1, inorder, inLow, index - 1)
            // }
                        
            // if index+1 <= inHigh {
                // preIndex += 1
                // vimp preIndex+index-inLow+1
                root?.right = constructTree(preorder, preIndex+index-inLow+1, inorder, index + 1, inHigh)
            // }
        }
        
        return root
    }
    
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        
        if preorder.count != inorder.count {
            return nil
        }
        
        if preorder.count < 1 || inorder.count < 1 {
            return nil
        }
        
        return constructTree(preorder, 0, inorder, 0, inorder.count-1)
    }
}