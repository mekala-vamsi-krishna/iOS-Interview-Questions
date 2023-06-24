//
//  LargestNumberInArray.swift
//  iOSInterViewQuestions
//
//  Created by Mekala Vamsi Krishna on 6/24/23.
//

import Foundation

class Problems {
    func largestNumberInArray(array: [Int]) -> Int {
        var largestNumber = 0
        for number in array {
            if (number > largestNumber) {
                largestNumber = number
            }
        }
        return largestNumber
    }
    
    func add(a: Int, b: Int) -> Int{
        if a == b {
            return (a + b) * 3
        } else {
            return a + b
        }
    }
    
    func diff(n: Int) -> Int {
        if n > 51 {
            return (n - 51) * 2
        } else {
            return 51 - n
        }
    }
    
    func bool1(a: Int, b: Int) -> Bool {
        if a == 20 || b == 20 || (a + b) == 20 {
            return true
        } else {
            return false
        }
    }
    
    func bool2(a: Int, b: Int) -> Bool {
        if a < 0 && b > 0 {
            return true
        } else if a > 0 && b < 0 {
            return true
        } else if a < 0 && b < 0 {
            return true
        } else {
            return false
        }
    }
    
    func str(word: String) -> String {
        if word.hasPrefix("Is") == true {
            return word
        } else {
            return "Is \(word)"
        }
    }
    
    func removeStr(word: String, n: Int) -> String {
        var newWord = word
        let index = word.index(word.startIndex, offsetBy: n)

        if word.count > 0 {
            newWord.remove(at: index)
        }

        return newWord
    }
    
    func first_last(str1: String) -> String {
        var result = str1
        let first_char = result.remove(at: result.startIndex)
        let findLast = result.index(before: result.endIndex)
        let last_char = result.remove(at: findLast)

        result.append(first_char)
        result.insert(last_char, at: (result.startIndex))

        return result
    }
    
    func addChar(name: String) -> String {
            var word = name

            var lastChar = word.removeLast()
            var lastStr = String(lastChar)

            return lastStr + name + lastStr
    }
    
    func fibonacciSeries(num: Int) -> Int {
        var n1 = 0
        var n2 = 1

        var nR = 0

        for _ in 0..<num {
            nR = n1
            n1 = n2
            n2 = nR + n2
        }

        return n1
    }
    
    func factorial(fact: Int) -> Int {

        if fact == 0 {
            return 1
        } else {
            return fact * factorial(fact: fact - 1)
        }
    }
    
    func armstrong(num: Int) -> String {
        var number = num
        var sum = 0
        var rem = 0

        while(number > 0) {
            rem = number % 10
            sum = sum + (rem * rem * rem)
            number /= 10

            if (sum > num) { break }
        }

        if (num == sum) {
            return "Armstrong"
        }

        return "Non Armstrong"
    }
    
    func sum(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
    func reverseArray(a: [Int]) -> [Int] {
        var reversedArray = a
        var first = 0
        var last = a.count - 1
        while first < last {
            reversedArray.swapAt(first, last)
            first += 1
            last -= 1
        }
        return reversedArray
    }
}
