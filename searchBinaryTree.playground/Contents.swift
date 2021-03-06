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
search(node: rootNode, searchValue: 20)


//
let list = [1,5,10,11,14,20]
let index = list.firstIndex(where:{$0 == 20})

// Finding longestSubsSrring WithOut Repeating
class Solution {
    func lengthOfLongestSubstring(_ str: String) -> Int {
        
        var characterDict = [Character:Int]()
        var maxLength = 0
        var lastRepeatPos = -1
        var i = 0
        
        for c in str{
            if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
                lastRepeatPos = characterDict[c]!
            }
            
            maxLength = max(i - lastRepeatPos, maxLength)
            characterDict[c] = i
            i += 1
        }
        
        return maxLength
    }
}

Solution().lengthOfLongestSubstring("abcdabcbb")

