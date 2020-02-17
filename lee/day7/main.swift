//
//  main.swift
//  day7
//
//  Created by Shelby on 2020/2/17.
//  Copyright © 2020 Shelby. All rights reserved.
//

import Foundation


func plusOne(_ digits: [Int]) -> [Int] {
    var newList = digits
    var count = 0
    for i in (0 ..< newList.count).reversed() {
        if newList[i] != 9 {
            newList[i] = newList[i] + 1
            return newList
        } else {
            newList[i] = 0
            count += 1
        }
    }
    if count == digits.count {
        newList.insert(1, at: 0)
    }
    return newList
}

print(plusOne([9]))
