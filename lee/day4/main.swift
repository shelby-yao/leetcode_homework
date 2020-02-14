//
//  main.swift
//  day4
//
//  Created by Shelby on 2020/2/14.
//  Copyright © 2020 Shelby. All rights reserved.
//

import Foundation






    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//        var nums2 = nums2
//        nums1.removeLast(nums1.count - m)
//        nums1.append(contentsOf: nums2)
//        nums1.replaceSubrange(Range(NSRange(location: m, length: nums1.count - m))!, with: nums2)
        nums1.replaceSubrange(m ..< nums1.count, with: nums2)
        nums1.sort()
//        bubbleSort2(&nums1)
//        for i in 0 ..< m {
//            for j in 0 ..< n {
//                if nums2[j] < nums1[i] {
//                    let temp = nums1[i]
//                    nums1[i] = nums2[j]
//                    nums2[j] = temp
//                }
//            }
//        }
//        bubbleSort2(&nums2)
//        for k in m ..< nums1.count {
//            nums1[k] = nums2[(k - m)]
//        }
        
    }

func bubbleSort2(_ nums: inout [Int]) {
    let n = nums.count
    var swap = 0 //swap变量用来标记循环里最后一次交换的位置
    var k = n - 1 //内循环判断条件
    for _ in 0..<n {
        var flag = true
        for j in 0..<k {
            if nums[j] > nums[j + 1] {
                nums.swapAt(j, j + 1)
                flag = false
                swap = j
            }
        }
        k = swap
        if flag {
            break
        }
    }
}

//var n1 = [4,5,6,0,0,0]
//var n2 = [1,2,3]

var n1 = [1,2,3,0,0,0]
var n2 = [2,5,6]

merge(&n1, 3, n2, 3)
