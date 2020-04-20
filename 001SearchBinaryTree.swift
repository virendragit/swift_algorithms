//
//  SearchBinaryTree.swift
//  swift_algos
//
//  Created by Virendra Gupta on 4/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import Foundation


import UIKit

// 1.
//       10
//      /  \
//     5    14
//    /    /  \
//   1    11   20

//2.
class Node{
    let value:Int
    var leftChild :Node?
    var rightChild :Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

//left branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

//right branch
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild:nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

//rootNode

let rootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)

//3. find the value in binary tree.
func search(node: Node?, searchValue: Int) -> Bool{
    
    if node == nil {
        return false
    }
    
    if node?.value == searchValue{
        return true
    }else{
        //recurssive function
        return search(node: node?.leftChild, searchValue: searchValue) || search(node: node?.rightChild, searchValue: searchValue)
    }
    
}

//4. call func to search the value.
//search(node: rootNode, searchValue: 20)
