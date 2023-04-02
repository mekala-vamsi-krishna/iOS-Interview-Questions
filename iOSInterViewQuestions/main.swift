//
//  main.swift
//  iOSInterViewQuestions
//
//  Created by Mekala Vamsi Krishna on 25/03/23.
//

import Foundation

 //MARK: - Largest number from an Array

//var numbers = [1, 5, 3, 7, 9, 25, 50, 90]
//
//var largestNumber = 0
//
//for number in numbers {
//    if (number > largestNumber) {
//        largestNumber = number
//    }
//}
//
//print(largestNumber)

 //MARK: - 1. Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum

//func add(a: Int, b: Int) -> Int{
//    if a == b {
//        return (a + b) * 3
//    } else {
//        return a + b
//    }
//}
//
//print(add(a: 20, b: 20))

 //MARK: - 2. Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference

//func diff(n: Int) -> Int {
//    if n > 51 {
//        return (n - 51) * 2
//    } else {
//        return 51 - n
//    }
//}
//
//print(diff(n: 91))

 //MARK: - 3. Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.

//func bool(a: Int, b: Int) -> Bool {
//    if a == 20 || b == 20 || (a + b) == 20 {
//        return true
//    } else {
//        return false
//    }
//}
//
//print(bool(a: 10, b: 10))

 //MARK: - 4. Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.

//func bool(a: Int, b: Int) -> Bool {
//    if a < 0 && b > 0 {
//        return true
//    } else if a > 0 && b < 0 {
//        return true
//    } else if a < 0 && b < 0 {
//        return true
//    } else {
//        return false
//    }
//}
//
//print(bool(a: 8, b: 8))

 //MARK: - Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.

//func str(word: String) -> String {
//    if word.hasPrefix("Is") == true {
//        return word
//    } else {
//        return "Is \(word)"
//    }
//}
//
//print(str(word: "Is it you?"))

 //MARK: - 6. Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.

//func removeStr(word: String, n: Int) -> String {
//    var newWord = word
//    let index = word.index(word.startIndex, offsetBy: n)
//
//    if word.count > 0 {
//        newWord.remove(at: index)
//    }
//
//    return newWord
//}
//
//print(removeStr(word: "Rakesh", n: 4))

 //MARK: - 7. Write a Swift program to change the first and last character of a given string.

//func first_last(str1: String) -> String {
//    var result = str1
//    let first_char = result.remove(at: result.startIndex)
//    let findLast = result.index(before: result.endIndex)
//    let last_char = result.remove(at: findLast)
//
//    result.append(first_char)
//    result.insert(last_char, at: (result.startIndex))
//
//    return result
//}
//
//
//print(first_last(str1: "Vamsi"))

 //MARK: - 8. Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.

//func addChar(name: String) -> String {
//        var word = name
//
//        var lastChar = word.removeLast()
//        var lastStr = String(lastChar)
//
//        return lastStr + name + lastStr
//}
//
//print(addChar(name: "Vamsi"))


 //MARK: - 9. Fibonacci Series
//
//func fibonacciSeries(num: Int) -> Int {
//    var n1 = 0
//    var n2 = 1
//
//    var nR = 0
//
//    for _ in 0..<num {
//        nR = n1
//        n1 = n2
//        n2 = nR + n2
//    }
//
//    return n1
//}
//let result1 = fibonacciSeries(num: 2)
//print(result1)

// MARK: - 10. Factorial Code

//func factorial(fact: Int) -> Int {
//
//    if fact == 0 {
//        return 1
//    } else {
//        return fact * factorial(fact: fact - 1)
//    }
//}
//
//let result2 = factorial(fact: 5)
//print(result2)

// MARK: - 11. Armstrong number

//func armstrong(num: Int) -> String {
//    var number = num
//    var sum = 0
//    var rem = 0
//
//    while(number > 0) {
//        rem = number % 10
//        sum = sum + (rem * rem * rem)
//        number /= 10
//
//        if (sum > num) { break }
//    }
//
//    if (num == sum) {
//        return "Armstrong"
//    }
//
//    return "Non Armstrong"
//}
//
//let result3 = armstrong(num: 729)
//print(result3)

// MARK: - 12. Sum of two numbers

//func sum(n1: Int, n2: Int) -> Int {
//    return n1 + n2
//}
//
//let result = sum(n1: 2, n2: 3)
//print(result)

 //MARK: - 13. Calculate buckets of paint needed

//var width: Float = 3.4
//var height: Float = 2.1
//
//var bucketsOfPaint: Int {
//    get {
//        let area = width * height
//        let areaCoveredPerBucket: Float = 1.5
//        let numberOfBuckets = area / areaCoveredPerBucket
//        let roundedBuckets = ceilf(numberOfBuckets)
//        return Int(roundedBuckets)
//    }
//    set {
//        let areaCanCover = Double(newValue) * 1.5
//        print(areaCanCover)
//    }
//}
//
//print(bucketsOfPaint)
//bucketsOfPaint = 10

 //MARK: - 14. Getting numbers from a string

//func getDigitsFromString(for string: String) -> [Int]{
//    let stringInt = Array(string)
//    var array = [Int]()
//    for i in stringInt {
//        if let i = Int(String(i)) {
//            array.append(i)
//        }
//    }
//    return array
//}
//
//let array = getDigitsFromString(for: "vamsi krishna")
//print(array)

 //MARK: - 15. Remove duplicate values from an array

//let numbers = [1, 3, 4, 3, 3, 4, 5, 6, 6, 6, 9, 8]
//
//print(Set(numbers))
//
//var tempArray: [Int] = []
//
//for number in numbers {
//    if !tempArray.contains(number) {
//        tempArray.append(number)
//    }
//}
//print(tempArray)
//
//

 //MARK: - 16. Swapping two values

//var a = 10
//var b = 12
//
//(a, b) = (b, a)
//
//func swapNumbers(_ a: inout Int, _ b: inout Int) {
//    (a, b) = (b, a)
//}
//
//swapNumbers(&a, &b)
//
//print(a)
//print(b)

 //MARK: - 17. Multiply every element with 2 from an array

//let numbers = [2, 3, 4, 5, 6, 7]
//var tempNumbers: [Int] = []

//for number in numbers {
//    tempNumbers.append(number * 2)
//}
//print(tempNumbers)

 //MARK: - 18. Map
//let numbers = [2, 3, 4, 5, 6, 7]
//var tempNumbers: [Int] = []
//
//let newArray = numbers.map { number in
////    return tempNumbers.append(number * 2)
//    number * 2 // remove return if there is single line to execute inside the closure
//}

//let newArray2 = numbers.map({ $0 * 2})
//print(newArray2)

 //MARK: - 19.Compactmap
// Compactmap is similar to Map but removes the nil values and optional values
//let numbers: [Int?] = [1, 2, nil, 4, nil, 6]
//let newArray = numbers.map({$0! * 2}) // This will crash while runtime due to nil value found in array
//let newArray = numbers.map { number -> Int? in
//    if let number = number {
//       return number * 2
//    } else {
//        return nil
//    }
//}
//print(newArray)
//let newArray = numbers.map({ $0 == nil ? nil : $0! * 2 })
//print(newArray)
//
//let newCompactArray = numbers.compactMap({ $0 == nil ? nil : $0! * 2 })
//let compactWithMap = numbers.compactMap({$0}).map({$0 * 2})
//print(newCompactArray)
//print(compactWithMap)

 //MARK: - 20. Flat Map - collection inside collection converts into single collection or an array
//let numbers = [
//    [1, 2, 3],
//    [4, 5, 6],
//    [7, 8, 9]
//]
//var tempFlatArray = [Int]()
//for number in numbers {
//    tempFlatArray += number
//}
//print(tempFlatArray)
//let flatMapArray = numbers.flatMap({$0})
//let flatWithMap = numbers.flatMap({$0}).map({$0 * 2})
//print(flatMapArray)
//print(flatWithMap)

 //MARK: - 21. Capitalize the string values contained array

//let words = ["vamsi", "rakesh", "mohan"]
//var upperWordsArray = [String]()
//for word in words {
//    upperWordsArray.append(word.uppercased())
//}
//print(upperWordsArray)
//let cWords = words.map { word  in
//    upperWordsArray.append(word.uppercased())
//}
//print(upperWordsArray)

 //MARK: - 21. Remove duplicates using Equatable protocol

//
//let numbers = [1, 2, 2, 3, 3, 3, 4, 4, 5, 5, 5]
//let chars = ["a", "b", "c", "c", "c", "b"]
//var tempNumbers = [Int]()

//extension Array where Element: Equatable {
//    guard !self.isEmpty else { return [] }
    
//    func removeDuplictes() -> [Element] {
//        var tempNumbers: [Element] = []
//        for number in numbers {
//            if !tempNumbers.contains(number) {
//                tempNumbers.append(number)
//            }
//        }
//        self.forEach { item in
//            if !tempNumbers.contains(item) {
//                tempNumbers.append(item)
//            }
//        }
//        return tempNumbers
//    }
//}
//
//func removeDuplicates(arr: [Int]) -> [Int] {
//    var tempNumbers = [Int]()
//    for number in numbers {
//        if !tempNumbers.contains(number) {
//            tempNumbers.append(number)
//        }
//    }
//    return tempNumbers
//}

//print(removeDuplicates(arr: numbers))
//print(numbers.removeDuplictes())
//print(chars.removeDuplictes())

//removing duplicates using Generics

//let numbers = [1, 2, 2, 3, 3, 3, 4, 4, 5, 5, 5]
//let chars = ["a", "b", "c", "c", "c", "b"]
//
//func removeDuplicates<T: Equatable>(arr: [T]) -> [T] {
//    var tempArr = [T]()
//    for item in arr {
//        if !tempArr.contains(item) {
//            tempArr.append(item)
//        }
//    }
//    return tempArr
//}
//
//print(removeDuplicates(arr: numbers))

 //MARK: - 22. Filter capital letters from the string
//
//func filterCapitalCharacters(input: String) -> String? {
//    let result = input.filter({("A"..."Z").contains($0)})
//    return result.isEmpty ? nil : result
//}
//print(filterCapitalCharacters(input: "Mekala Vamsi Krishna")!)

 //MARK: - 23. Write a progrm to convert the elements of [Any] to [Int]

//let array: [Any] = ["vamsi", true, 2.356, 8, 9]
//func convertToInt(input: [Any]) -> [Int] {
//    let newResult = input.compactMap { item in
//        item as? Int
//    }
//    return newResult.isEmpty == true ? [] : newResult
//}
//
//print(convertToInt(input: array))

 //MARK: - 24. Convert Alphanumeric into Digits

//let inputString = "abc123def456ghi789"
//let regex = try! NSRegularExpression(pattern: "\\d+")
//var digitString = ""
//for match in regex.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString)) {
//    let matchString = String(inputString[Range(match.range, in: inputString)!])
//    for digitChar in matchString {
//        if let digit = Int(String(digitChar)) {
//            digitString += String(digit)
////            print(digit)
//        }
//    }
//}
//print(digitString)

 //MARK: - 25. Combining two strings

//func combine(string1: String, string2: String) -> String {
//    return string1+string2
//}
//
//print(combine(string1: "car", string2: "pet"))

//let string = "Hello, world! #"
//let specialChars = CharacterSet(charactersIn: "!@#$%^&*()_+-=[]{}|;':\",./<>?\\")
//if let _ = string.rangeOfCharacter(from: specialChars) {
//    print("The string contains at least one special character")
//} else {
//    print("The string does not contain any special characters")
//}

