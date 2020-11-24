//: [Previous](@previous)

import Foundation

//Do not modify these two node classes!!


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
  }

class Solution {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        
        guard let root = root else { return false}
        if let left = root.left {
            if left.val != root.val {
                return false
            }
            isUnivalTree(left)
        }
        
        if let right = root.right {
            if right.val != root.val {
                return false
            }
            isUnivalTree(right)
        }
        return true
    }
}



