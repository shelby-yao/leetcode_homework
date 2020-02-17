//
//  main.swift
//  day6
//
//  Created by Shelby on 2020/2/16.
//  Copyright © 2020 Shelby. All rights reserved.
//

import Foundation

func trap(_ height: [Int]) -> Int {
    if height.count == 0 || height.count == 1 || height.count == 2 { return 0 }
    var count = 0
    var leftMaxList = [Int](repeating: 0, count: height.count)
    var rightMaxList = [Int](repeating: 0, count: height.count)
    leftMaxList[0] = height[0]
    for i in 1 ..< height.count - 1 {
        leftMaxList[i] = max(leftMaxList[i - 1], height[i])
    }
    rightMaxList[height.count - 1] = height[height.count - 1]
    for i in (1 ..< height.count - 1).reversed() {
        rightMaxList[i] = max(rightMaxList[i + 1], height[i])
    }
    for i in 1 ..< height.count - 1 {
        count += (min(leftMaxList[i], rightMaxList[i]) - height[i])
    }
        
    return count
}


 let list = [2,0,2]
let k = trap(list)
print(k)
