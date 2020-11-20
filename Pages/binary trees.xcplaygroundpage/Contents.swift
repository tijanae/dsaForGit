//: [Previous](@previous)

import Foundation

 
/*
     8
    / \
  11   4
  /\    \
7   30   6
 
 */

class BinaryTreeNode<T> {
  var value: T
  var left: BinaryTreeNode?
  var right: BinaryTreeNode?
  init(_ value: T) {
    self.value = value
  }
}

struct Queue<T> {
  private var elements = [T]()
  
  public var isEmpty: Bool {
    return elements.isEmpty
  }
  
  public var peek: T? {
    return elements.first
  }
  
  mutating func enqueue(_ element: T) {
    elements.append(element)
  }
  
  mutating func dequeue() -> T? {
    // see Queue lesson for more optimized dequeue https://github.com/alexpaul/Queue
    guard !elements.isEmpty else {
      return nil
    }
    return elements.removeFirst()
  }
}

func breadthFirstTraversal<T>(_ treeNode: BinaryTreeNode<T>?) {
  var queue = Queue<BinaryTreeNode<T>>()
}

