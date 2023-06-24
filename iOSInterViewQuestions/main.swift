//
//  main.swift
//  iOSInterViewQuestions
//
//  Created by Mekala Vamsi Krishna on 25/03/23.
//

import Foundation

let object = Problems()

//MARK: - Largest number from an Array
print(object.largestNumberInArray(array: [1, 27, 3, 4, 5, 6, 21]))

 //MARK: - 1. Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum
print(object.add(a: 3, b: 3))

 //MARK: - 2. Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference
let obj2 = Problems()
print(object.diff(n: 23))

 //MARK: - 3. Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
print(object.bool1(a: 10, b: 10))

 //MARK: - 4. Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
print(object.bool2(a: 8, b: 8))

 //MARK: - Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
print(object.str(word: "Is it you?"))

 //MARK: - 6. Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.
print(object.removeStr(word: "Rakesh", n: 4))

 //MARK: - 7. Write a Swift program to change the first and last character of a given string.
print(object.first_last(str1: "Vamsi"))

 //MARK: - 8. Write a Swift program to add the last character (given string) at the front and back of a given string. The length of the given string must be 1 or more.
print(object.addChar(name: "Vamsi"))

 //MARK: - 9. Fibonacci Series
print(object.fibonacciSeries(num: 8))

// MARK: - 10. Factorial Code
print(object.factorial(fact: 5))

// MARK: - 11. Armstrong number
print(object.armstrong(num: 729))

// MARK: - 12. Sum of two numbers
print(object.sum(n1: 2, n2: 3))

 //MARK: - 13. Calculate buckets of paint needed

var width: Float = 3.4
var height: Float = 2.1

var bucketsOfPaint: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print(areaCanCover)
    }
}

print(bucketsOfPaint)
bucketsOfPaint = 10

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

 //MARK: - 26. FizzBuzz Question

//for number in 1...1000 {
//    if number % 3 == 0 && number % 5 == 0 {
//        print("FizzBuzz")
//    } else if number % 3 == 0 {
//        print("Fizz")
//    } else if number % 5 == 0 {
//        print("Buzz")
//    } else {
//        print(number)
//    }
//}

 //MARK: - 26. write a function 'function' taht takes in two integers as in out perameters. it should also taken in another function as a parameter and this function should swap the values of the two integers passed, finally 'function' should return two strings "var1 is now \(Var1)" and "Var2 is now \(var2)" in swift
//func function1(var1: Int, var2: Int, swapping: (inout Int, inout Int) -> Void)  -> (String, String) {
//    var a = var1
//    var b = var2
//    swap(&a, &b)
//    return ("var1 is \(a)", "var2 is \(b)")
//}
//
//func swapping(a: inout Int, b: inout Int) {
//    let temp = a
//    a = b
//    b = temp
//}
//
//let output = function1(var1: 1, var2: 2, swapping: swapping)
//print(output.0)
//print(output.1)

 //MARK: - 27. create a structur with a stored property 'number' and a computed property 'numberSquared' which is computed as the square of the stored property. Also declare a getter and setter for 'numberSquared'. the structure also contains a read cubes the stored property
//struct MyStruct {
//    var number: Int
//    var numberSquared: Int {
//        get {
//            return number * number
//        }
//        set {
//            number = Int(sqrt(Double(newValue)))
//        }
//    }
//    var numberCubed: Int {
//        get {
//            return number * number * number
//        }
//    }
//}
//
//let obj1 = MyStruct(number: 2)
//
//print(obj1.number)
//print(obj1.numberSquared)
//print(obj1.numberCubed)

 //MARK: - 28. Define an enumeration for a traffic signal. the signal must cycle between three diffrent states (red, yellow and green) every time it's next() method is called
//enum Traffic {
//    case red
//    case yellow
//    case green
//
//    mutating func next() {
//        switch self {
//        case .red:
//            self = .yellow
//        case .yellow:
//            self = .green
//        case .green:
//            self = .red
//        }
//    }
//}
//
//var signal = Traffic.red
//print(signal)
//
//signal.next()
//print(signal)
//
//signal.next()
//print(signal)

 //MARK: - 29. create a class called VendingMachine. it must contain an array of strings called 'items' as a stored property. it must also contain a function 'getitem' which takes a string and compares it to the item is present, it should print 'Here you go!' or else it should throw a custom error ' itemNotAvailable'
//class VendingMachine {
//    var items: [String]
//
//    init(items: [String]) {
//        self.items = items
//    }
//
//    func getItem(_ item: String) throws {
//        guard items.contains(item) else {
//            throw VendingMachineError.itemNotAvailable
//        }
//        print("Here you go!")
//    }
//}
//
//enum VendingMachineError: Error {
//    case itemNotAvailable
//}
//
//let myVendingMachine = VendingMachine(items: ["Coke", "Pepsi", "Water"])
//try myVendingMachine.getItem("Coke")
//do {
//    try myVendingMachine.getItem("Sprite")
//} catch {
//    print(error)
//}

 //MARK: - 30. Reverse the String

//func reverseString(word: String) -> String {
//    var reversedString = ""
//    for char in word {
//        reversedString = "\(char)\(reversedString)"
//    }
//    return reversedString
//}
//print(reverseString(word: "anhsirK ismaV alakeM"))

 //MARK: - 31. Uppercase the first letter of a string

//func uppercase(the word: String) -> String {
//    var outputString = ""
//    if let firstLetter = word.first {
//        outputString = String(firstLetter).uppercased() + String(word.dropFirst())
//    }
//    return outputString
//}
//print(uppercase(the: "mekala vamsi krishna"))

 //MARK: 32. Write a function that takes a string as input and returns the first non-repeating character in the string. If there are no non-repeating characters, return nil.

//func firstNonRepeatingChar(s: String) -> Character? {
//    var charCount = [Character: Int]()
//
//    for char in s {
//        charCount[char, default: 0] += 1
//    }
//
//    for char in s {
//        if charCount[char] == 1 {
//            return char
//        }
//    }
//
//    return nil
//}
//print(firstNonRepeatingChar(s: "Verdict"))

 //MARK: 33. Find the index of the given key from an array

//var key = 20
//
//func linearSearch(_ array: [Int], key: Int) -> Int? {
//    for (index, element) in array.enumerated() {
//        if element == key {
//            print("The index of \(key) is \(index)")
//            return index
//        }
//    }
//    return nil
//}
//print(linearSearch([10, 30, 40, 20, 50, 60], key: 20))

 //MARK: 34. Adding 2 to each and every element in an array by using for in loop (Don't use Map Function)

//var array = [2, 4, 7, 9, 3, 5]
//var newArray = [Int]()
//
//for i in array {
//    newArray.append(i + 2)
//}
//
//print(newArray)
//
//// using Map function
//
//print(array.map({$0 + 2}))

 //MARK: Reverse an Array

//func reversTheArray(_ name: String) -> String {
//    var reversedName = ""
//    for letter in name {
//        reversedName = "\(letter)\(reversedName)"
//    }
//    return reversedName
//}
//
//print(reversTheArray("Mekala Vamsi Krishna"))
//
//func reverseArray<T>(_ array: [T]) -> [T] {
//    var reversedArray = array
//    var first = 0
//    var last = array.count - 1
//
//    while first < last {
//        reversedArray.swapAt(first, last)
//        first += 1
//        last -= 1
//    }
//    return reversedArray
//}
//
//print(reverseArray(["vamsi", "Rakesh", "Raji", "Mohan"]))
//
//func reverse<T>(_ numbers: inout [T]) -> [T] {
//    var reverseNumbers = [T]()
//    while numbers.count > 0 {
//        reverseNumbers.append(numbers.removeLast())
//    }
//    return reverseNumbers
//}
//
//var array = ["Vamsi", "Raki", "Raji", "Mohan"]
//print(reverse(&array))
//
//
//func rotateArray<T>(_ array: [T], byPositions positions: Int) -> [T] {
//    var rotatedArray = array
//    for _ in 0 ..< positions {
//        let firstElement = rotatedArray.removeFirst()
//        rotatedArray.append(firstElement)
//    }
//    return rotatedArray
//}
//let numbers = [1, 2, 3, 4, 5]
//let rotatedNumbers = rotateArray(numbers, byPositions: 2)
//print(rotatedNumbers)

//func rearrangeArray<T>(_ array: [T], fromIndex: Int, toIndex: Int) -> [T] {
//    var rearrangedArray = array
//    let element = rearrangedArray.remove(at: fromIndex)
//    rearrangedArray.insert(element, at: toIndex)
//    return rearrangedArray
//}
//
//let numbersArray = [1, 2, 3, 4, 5, 6]
//print(rearrangeArray(numbersArray, fromIndex: 0, toIndex: 5))

 //MARK: Higher Order Functions

 //MARK: Map

//let numbers = [1, 2, 3, 4, 5]
//let squaredNumbers = numbers.map { number1 in
//    number1 * number1
//}
//print(squaredNumbers)
//
// //MARK: Compact Map
//let strings = ["1", "2", "3", "4", "Five"]
//let convertedStrings = strings.compactMap({
//    Int($0)
//})
//print(convertedStrings)
//
// //MARK: flat Map
//let flatmapNumbers = [1, 2, 3, 4, 5]
//let nestedArrays = numbers.map {Array(repeating: $0, count: $0)}
//let flattenedArray = flatmapNumbers.flatMap { Array(repeating: $0, count: $0) }
//print(flattenedArray)
//
// //MARK: Reduce
//let reduceNumbers = [1, 2, 3, 4, 5]
//let newReduceArray = reduceNumbers.reduce(0, {
//    $0 + $1
//})
//print(newReduceArray)

let reverseArray = Problems()
print(reverseArray.reverseArray(a: [1,2,3]))
