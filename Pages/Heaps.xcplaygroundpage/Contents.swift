//: [Previous](@previous)

import Foundation

// Heap is a tree data structure mainly used to create a min or max heap. traditionally implemented using an array as opposed to a binary tree that uses pointers to point to left and right children
// heaps are satisfied  when the root is min or root is max

// objective is to create a heap and retrieve any child

struct Heap {
//    data structure for heap nodes are arrays
    
    private var nodes = []
    
//    get the parent index
    
    public func parentIndex(_ index: Int) -> Int {
        return (index - 1) / 2
    }
    
//    get the left child index
    
    public func leftChildIndex(_ index: Int) -> Int {
        return 2 * index + 1
    }
    
//    get the right child index
    
    public func rightChildIndex(_ index: Int) -> Int {
        return 2 * index + 2
    }
    
    public func parent(_ index: Int) -> Int {
        return nodes[parentIndex(index)]
    }
    
    public func leftChild(_ index: Int) -> Int {
        return nodes[leftChildIndex(index)]
    }
    
    public func peek(_ index: Int) -> Int {
        return parentIndex
    }
}
