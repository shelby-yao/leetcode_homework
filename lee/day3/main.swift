//
//  main.swift
//  day3
//
//  Created by Shelby on 2020/2/13.
//  Copyright © 2020 Shelby. All rights reserved.
//

import Foundation



 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }


    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = cfList(link: l1)
        let list2 = cfList(link: l2)
        list1.append(contentsOf: list2)
        bubbleSort(&list1)
        return list1.first
    }

func bubbleSort(_ nums: inout [ListNode]) {
    let n = nums.count
    for i in 0..<n {
        for j in 0..<(n - 1 - i) {
            if nums[j].val > nums[j + 1].val {
                nums.swapAt(j, j + 1)
            }
        }
    }
    for i in 0 ..< nums.count {
        if i == nums.count - 1 { break }
        let m = nums[i]
        let next = nums[i + 1]
        m.next = next
    }
}
    func cfList(link: ListNode?) -> [ListNode] {
        guard var l = link else { return [] }
        var array = [ListNode]()
        while true {
            let new = ListNode(l.val)
            array.append(new)
            if let nxt = l.next {
                l = nxt
            } else {
                break
            }
        }
        return array
    }


let l10 = ListNode(2)
//let l11 = ListNode(2)
//let l12 = ListNode(4)
//l10.next = l11
//l11.next = l12

let l20 = ListNode(1)
//let l21 = ListNode(3)
//let l22 = ListNode(4)
//l20.next = l21
//l21.next = l22
let pp = mergeTwoLists(l10, l20)
pp
