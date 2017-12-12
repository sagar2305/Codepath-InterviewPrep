/*
Given a binary tree, return the inorder traversal of its nodes' values.

For example:
Given binary tree [1,null,2,3],
   1
    \
     2
    /
   3
return [1,3,2].

*/

class Solution {
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        // recursive
        print("inorder \(root?.val)")
        
        
        if root == nil {
            return [Int]()
        }
        
        var inorder = [Int]()
        var current = root
        //mst if not while
        print("before inorder left")
        var left = inorderTraversal(current?.left)
        print("left \(left)")
        inorder.append(contentsOf: left) // using just append Line 56: cannot convert value of type '[Int]' to expected argument type 'Int'
        print("append current \(current!.val)")

        inorder.append(current!.val)

        print("before inorder right")

        var right = inorderTraversal(current?.right)
        print("right \(right)")

        inorder.append(contentsOf: right)

        print("return inorder = \(inorder)")
        return inorder
        
        
    }
}