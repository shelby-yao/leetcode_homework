//
//  main.swift
//  day2
//
//  Created by Shelby on 2020/2/12.
//  Copyright © 2020 Shelby. All rights reserved.
//

import Foundation

print("Hello, World!")


func fz(_ list: inout [Int], start: Int, end: Int) {
    let num = (end - start + 1) / 2
    for i in 0 ..< num {
        let temp = list[end - i]
        list[end - i] = list[start + i]
        list[start + i] = temp
    }
}

func rotate2(_ nums: inout [Int], _ k: Int) {
    let p = k % nums.count
    //翻转
    fz(&nums, start: 0, end: nums.count - 1)
    fz(&nums, start: 0, end: p-1)
    fz(&nums, start: p, end: nums.count - 1)
}

    func rotate(_ nums: inout [Int], _ k: Int) {
        let count = nums.count
        if count == 0 || count == 1 || k == 0  { return }
        var p = k % count
        if p == 0 { return }
        
//        for i in (count - k ..< count).reversed() {
//            let k = nums[i]
//            nums.insert(k, at: 0)
//            nums.remove(at: i)
//        }
        
        while p > 0 {
            let k = nums[count - 1]
            nums.insert(k, at: 0)
            nums.removeLast()
            p -= 1
        }
        
        
        
        
        
        
        
        
        
        
//        let wbList = nums[(count - p)...(count-1)]
//        let new = Array(wbList)
//        nums.removeLast(p)
//        nums.insert(contentsOf: new, at: 0)
        
//        nums = [2]
//        if count == 0 { return }
//        if k % count == 0 { return }
//        if count > k {
//            for i in 0 ..< count {
//                if i < count - k {
//
//                }
//            }
//        } else {
//
//        }
    }



var list = [1,2,3,4,5,6,7]

//rotate(&list, 2)
rotate2(&list, 3)
print(list)
