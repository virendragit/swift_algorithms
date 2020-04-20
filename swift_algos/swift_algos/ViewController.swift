//
//  ViewController.swift
//  swift_algos
//
//  Created by Virendra Gupta on 4/20/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let count  = Solution().lengthOfLongestSubstring("abcdabcbb")
        print(count)
        
        let contains = search(node: rootNode, searchValue: 20)
        print(contains)
        
    }


}


//class Solution {
//    func lengthOfLongestSubstring(_ str: String) -> Int {
//
//        var characterDict = [Character:Int]()
//        var maxLength = 0
//        var lastRepeatPos = -1
//        var i = 0
//
//        for c in str{
//            if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
//                lastRepeatPos = characterDict[c]!
//            }
//
//            maxLength = max(i - lastRepeatPos, maxLength)
//            characterDict[c] = i
//            i += 1
//        }
//
//        return maxLength
//    }
//}
