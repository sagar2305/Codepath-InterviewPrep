/*
Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.


*/

class Solution {
    
    // balanced meaning left subtree is balanced and right subtree is balanced
    /*
    An empty tree is height-balanced. A non-empty binary tree T is balanced if:
1) Left subtree of T is balanced
2) Right subtree of T is balanced
3) The difference between heights of left subtree and right subtree is not more than 1.
    */
    
    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        return 1 + max(height(root?.left), height(root?.right))
    }
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        
        var leftHeight = height(root?.left)
        var rightHeight = height(root?.right)
       
        return abs(rightHeight - leftHeight) <= 1 && isBalanced(root?.left) && isBalanced(root?.right) //mst imp abs
    }
}