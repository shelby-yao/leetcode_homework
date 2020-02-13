//
//  main.swift
//  lee
//
//  Created by Shelby on 2020/2/11.
//  Copyright © 2020 Shelby. All rights reserved.
//

import Foundation

print("Hello, World!")

//class Solution {
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var i = 0
    var j = 1
    var count = nums.count
    let oriCount = nums.count
    while j < oriCount {
        let first = nums[i]
        let second = nums[j]
        if first == second {
            count -= 1
        } else {
            i += 1
            nums[i] = nums[j]
        }
        j += 1
    }
    return count
}
var num = [0,0,0,1,1,2,3,4,4,5]
let res = removeDuplicates(&num)
print("res = \(res)")
//}
