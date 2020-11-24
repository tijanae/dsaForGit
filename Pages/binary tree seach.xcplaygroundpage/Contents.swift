//: [Previous](@previous)

import Foundation

class BinaryTreeNode {
  var value: Int
  var leftChild: BinaryTreeNode?
  var rightChild: BinaryTreeNode?
  init(_ value: Int) {
    self.value = value
  }
}


func insert(_ rootNode: BinaryTreeNode?, _ value: Int) -> BinaryTreeNode? {
  
    let newNode = BinaryTreeNode(value)
    guard let _ = rootNode else {
        return newNode
    }
  
  if value < rootNode!.value {
    if rootNode?.leftChild == nil {
      rootNode?.leftChild = newNode
      return rootNode
    } else {
      insert(rootNode?.leftChild, value)
    }
  }
  
  if value > rootNode!.value {
    if rootNode?.rightChild == nil {
      rootNode?.rightChild = newNode
      return rootNode
    } else {
      insert(rootNode?.rightChild, value)
    }
  }
  
  return rootNode
}

func inOrderTraversal(_ rootNode: BinaryTreeNode?) {
  guard let _ = rootNode else { return }
  if let leftChild = rootNode?.leftChild {
    inOrderTraversal(leftChild)
  }
  print(rootNode!.value, terminator: " ")
  if let rightChild = rootNode?.rightChild {
    inOrderTraversal(rightChild)
  }
}

let treeNode = insert(nil, 10)
insert(treeNode, 13)
insert(treeNode, 7)
insert(treeNode, 5)
insert(treeNode, 11)
insert(treeNode, 9)
insert(treeNode, 16)
