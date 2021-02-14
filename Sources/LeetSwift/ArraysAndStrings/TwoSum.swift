//
//  File.swift
//  
//
//  Created by Sarah Lichter on 2/14/21.
//

import Foundation


//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.


//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var matchingIndex: [Int] = []
//    for (index, element) in nums.enumerated() {
//        let remaining = target - element
//        if let matchExists = nums.firstIndex(of: remaining) {
//            matchingIndex = [matchExists, index]
//        }
//    }
//
//    return matchingIndex
//}


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var valuesHash: [Int: Int] = Dictionary.init()
    var match: [Int] = []
    for (index, element) in nums.enumerated() {
        
        let remaining = target - element
//        if valuesHash.keys.contains(remaining) {
        if let matchingIndex = valuesHash[remaining] {
            match = [matchingIndex, index]
        }
            
//        }
        valuesHash[element] = index

    }
    
    return match
}
