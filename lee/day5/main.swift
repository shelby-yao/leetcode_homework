//
//  main.swift
//  day5
//
//  Created by Shelby on 2020/2/15.
//  Copyright © 2020 Shelby. All rights reserved.
//

import Foundation

class MyCircularDeque {
    var capacity: Int
    var list: [Int]
    var front: Int
    var rear: Int
    /** Initialize your data structure here. Set the size of the deque to be k. */
    init(_ k: Int) {
        capacity = k + 1
        list = [Int](repeating: -1, count: capacity)
        front = 0
        rear = 0
    }

    /** Adds an item at the front of Deque. Return true if the operation is successful. */
    func insertFront(_ value: Int) -> Bool {
        if isFull() { return false }
        front = (front - 1 + capacity) % capacity
        list[front] = value
        return true
    }

    /** Adds an item at the rear of Deque. Return true if the operation is successful. */
    func insertLast(_ value: Int) -> Bool {
        if isFull() { return false }
        list[rear] = value
        rear = (rear + 1) % capacity
        return true
    }

    
    /** Deletes an item from the front of Deque. Return true if the operation is successful. */
    func deleteFront() -> Bool {
        if isEmpty() { return false}
        front = (front + 1) % capacity
        return true
    }

    /** Deletes an item from the rear of Deque. Return true if the operation is successful. */
    func deleteLast() -> Bool {
        if isEmpty() { return false }
        rear = (rear - 1 + capacity) % capacity
        return true
    }

    /** Get the front item from the deque. */
    func getFront() -> Int {
        if isEmpty() { return -1 }
        return list[front]
    }

    /** Get the last item from the deque. */
    func getRear() -> Int {
        if isEmpty() { return -1 }
        return list[(rear - 1 + capacity) % capacity]
    }

    /** Checks whether the circular deque is empty or not. */
    func isEmpty() -> Bool {
        return front == rear
    }
    /** Checks whether the circular deque is full or not. */
    func isFull() -> Bool {
        return (rear + 1) % capacity == front
    }
    
    func findIndex() -> Int {
        for i in 0 ..< list.count {
            if list[i] == -1 {
                return i
            }
        }
        return 0
    }
}

let obj = MyCircularDeque(8)
let ret_1 = obj.insertFront(5)
let ret_2 = obj.getFront()
let ret_3 = obj.isEmpty()
let ret_4 = obj.deleteFront()
let ret_5 = obj.insertLast(3)
let ret_6 = obj.getRear()
let ret_7 = obj.insertLast(7)
let ret_8 = obj.insertFront(7)
let ret_9 = obj.deleteLast()
let ret_10 = obj.insertLast(4)
let ret_11 = obj.isEmpty()

//["MyCircularDeque","insertFront","getFront","isEmpty","deleteFront","insertLast","getRear","insertLast","insertFront","deleteLast","insertLast","isEmpty"]
//[[8],[5],[],[],[],[3],[],[7],[7],[],[4],[]]

//let ret_9: Bool = obj.deleteFront()
//let ret_10: Int = obj.getFront()
//["MyCircularDeque","insertFront","insertLast","getFront","insertLast","getFront","insertFront","getRear","getFront","getFront","deleteLast","getRear"]
//[[5],[7],[0],[],[3],[],[9],[],[],[],[],[]]
//[null,true,true,7,true,7,true,3,9,9,true,0]
_ = obj
