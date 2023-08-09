//
//  FAANG.swift
//  iOSInterViewQuestions
//
//  Created by Mekala Vamsi Krishna on 8/8/23.
//

import Foundation

class FAANG {
    func threeLargestNumbers(array: [Int]) -> [Int] {
        if array.isEmpty {
            return []
        }
        
        var resultArray = Array(repeating: Int.min, count: 3)
        
        for num in array {
            rearrange(number: num, result: &resultArray)
        }
        
        return resultArray
    }
    
    func rearrange(number: Int, result: inout [Int]) {
        var toBeInsertedAtIdx = -1
        
        if number > result[2] {
            toBeInsertedAtIdx = 2
        } else if number > result[1] {
            toBeInsertedAtIdx = 1
        } else if number > result[0] {
            toBeInsertedAtIdx = 0
        } else {
            return
        }
        
        var currentIdx = toBeInsertedAtIdx
        while currentIdx > 0 {
            let temp = result[currentIdx - 1]
            result[currentIdx - 1] = result[toBeInsertedAtIdx]
            currentIdx -= 1
            result[toBeInsertedAtIdx] = temp
        }
        result[toBeInsertedAtIdx] = number
    }
    
}
