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
    
    func getDigitsFromString(for string: String) -> [Int]{
        let stringInt = Array(string)
        var array = [Int]()
        for i in stringInt {
            if let i = Int(String(i)) {
                array.append(i)
            }
        }
        return array
    }
    
    func removeDuplicates(numbers: [Int]) -> [Int] {
        var tempArray: [Int] = []

        for number in numbers {
            if !tempArray.contains(number) {
                tempArray.append(number)
            }
        }
        return tempArray
    }
    
    func multiplyTwice(numbers: [Int]) -> [Int] {
        var tempNumbers: [Int] = []

        for number in numbers {
            tempNumbers.append(number * 2)
        }
        return tempNumbers
    }
    
    func map(numbers: [Int]) -> [Int] {
        var tempNumbers: [Int] = []
        let newArray = numbers.map { number in
//            return tempNumbers.append(number * 2)
            number * 2 // remove return if there is single line to execute inside the closure
        }
        return tempNumbers
    }
    
    func filterCapitalCharacters(input: String) -> String? {
        let result = input.filter({("A"..."Z").contains($0)})
        return result.isEmpty ? nil : result
    }
    
    func convertToInt(input: [Any]) -> [Int] {
        let newResult = input.compactMap { item in
            item as? Int
        }
        return newResult.isEmpty == true ? [] : newResult
    }
    
    func reverseString(word: String) -> String {
        var reversedString = ""
        for char in word {
            reversedString = "\(char)\(reversedString)"
        }
        return reversedString
    }
    
    func uppercase(the word: String) -> String {
        var outputString = ""
        if let firstLetter = word.first {
            outputString = String(firstLetter).uppercased() + String(word.dropFirst())
        }
        return outputString
    }
    
    func firstNonRepeatingChar(s: String) -> Character? {
        var charCount = [Character: Int]()

        for char in s {
            charCount[char, default: 0] += 1
        }

        for char in s {
            if charCount[char] == 1 {
                return char
            }
        }

        return nil
    }
    
    func linearSearch(_ array: [Int], key: Int) -> Int? {
        for (index, element) in array.enumerated() {
            if element == key {
                Swift.print("The index of \(key) is \(index)")
                return index
            }
        }
        return nil
    }
    
    func reversTheArray(_ name: String) -> String {
        var reversedName = ""
        for letter in name {
            reversedName = "\(letter)\(reversedName)"
        }
        return reversedName
    }

    func reverseArray<T>(_ array: [T]) -> [T] {
        var reversedArray = array
        var first = 0
        var last = array.count - 1

        while first < last {
            reversedArray.swapAt(first, last)
            first += 1
            last -= 1
        }
        return reversedArray
    }

    func reverse<T>(_ numbers: inout [T]) -> [T] {
        var reverseNumbers = [T]()
        while numbers.count > 0 {
            reverseNumbers.append(numbers.removeLast())
        }
        return reverseNumbers
    }

    func rotateArray<T>(_ array: [T], byPositions positions: Int) -> [T] {
        var rotatedArray = array
        for _ in 0 ..< positions {
            let firstElement = rotatedArray.removeFirst()
            rotatedArray.append(firstElement)
        }
        return rotatedArray
    }

    func rearrangeArray<T>(_ array: [T], fromIndex: Int, toIndex: Int) -> [T] {
        var rearrangedArray = array
        let element = rearrangedArray.remove(at: fromIndex)
        rearrangedArray.insert(element, at: toIndex)
        return rearrangedArray
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
