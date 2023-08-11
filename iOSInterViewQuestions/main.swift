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

print(object.getDigitsFromString(for: "vamsi krishna"))

 //MARK: - 15. Remove duplicate values from an array
print(object.removeDuplicates(numbers: [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]))

 //MARK: - 16. Swapping two values

var a = 10
var b = 12

(a, b) = (b, a)

func swapNumbers(_ a: inout Int, _ b: inout Int) {
    (a, b) = (b, a)
}

swapNumbers(&a, &b)

print(a)
print(b)

 //MARK: - 17. Multiply every element with 2 from an array
print(object.multiplyTwice(numbers: [1, 2, 3, 4, 5, 6]))

 //MARK: - 18. Map
print(object.map(numbers: [3, 4, 5, 6,]))

 //MARK: - 19.Compactmap
// Compactmap is similar to Map but removes the nil values and optional values
let numbers: [Int?] = [1, 2, nil, 4, nil, 6]
let newArray = numbers.map({($0 ?? 0) * 2}) // This will crash while runtime due to nil value found in array
let newArray2 = numbers.map { number -> Int? in
    if let number = number {
       return number * 2
    } else {
        return nil
    }
}
print(newArray)
let newArray3 = numbers.map({ $0 == nil ? nil : $0! * 2 })
print(newArray3)

let newCompactArray = numbers.compactMap({ $0 == nil ? nil : $0! * 2 })
let compactWithMap = numbers.compactMap({$0}).map({$0 * 2})
print(newCompactArray)
print(compactWithMap)

 //MARK: - 20. Flat Map - collection inside collection converts into single collection or an array
let flatMapNumbers = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
var tempFlatArray = [Int]()
for number in flatMapNumbers {
    tempFlatArray += number
}
print(tempFlatArray)
let flatMapArray = flatMapNumbers.flatMap({$0})
let flatWithMap = flatMapNumbers.flatMap({$0}).map({$0 * 2})
print(flatMapArray)
print(flatWithMap)

 //MARK: - 21. Capitalize the string values contained array

let words = ["vamsi", "rakesh", "mohan"]
var upperWordsArray = [String]()
for word in words {
    upperWordsArray.append(word.uppercased())
}
print(upperWordsArray)
let cWords = words.map { word  in
    upperWordsArray.append(word.uppercased())
}
print(upperWordsArray)

 //MARK: - 21. Remove duplicates using Equatable protocol

//
//let numbers = [1, 2, 2, 3, 3, 3, 4, 4, 5, 5, 5]
//let chars = ["a", "b", "c", "c", "c", "b"]
//var tempNumbers = [Int]()
//
//extension Array where Element: Equatable {
//    guard !self.isEmpty else { return [] }
//
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
print(object.filterCapitalCharacters(input: "VAMSI"))

 //MARK: - 23. Write a progrm to convert the elements of [Any] to [Int]
print(object.convertToInt(input: ["vamsi", true, 2.356, 8, 9]))

 //MARK: - 24. Convert Alphanumeric into Digits

let inputString = "abc123def456ghi789"
let regex = try! NSRegularExpression(pattern: "\\d+")
var digitString = ""
for match in regex.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString)) {
    let matchString = String(inputString[Range(match.range, in: inputString)!])
    for digitChar in matchString {
        if let digit = Int(String(digitChar)) {
            digitString += String(digit)
//            print(digit)
        }
    }
}
print(digitString)

 //MARK: - 25. Combining two strings

func combine(string1: String, string2: String) -> String {
    return string1+string2
}

print(combine(string1: "car", string2: "pet"))

let string = "Hello, world! #"
let specialChars = CharacterSet(charactersIn: "!@#$%^&*()_+-=[]{}|;':\",./<>?\\")
if let _ = string.rangeOfCharacter(from: specialChars) {
    print("The string contains at least one special character")
} else {
    print("The string does not contain any special characters")
}

 //MARK: - 26. FizzBuzz Question

for number in 1...1000 {
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")
    } else if number % 3 == 0 {
        print("Fizz")
    } else if number % 5 == 0 {
        print("Buzz")
    } else {
        print(number)
    }
}

 //MARK: - 26. write a function 'function' taht takes in two integers as in out perameters. it should also taken in another function as a parameter and this function should swap the values of the two integers passed, finally 'function' should return two strings "var1 is now \(Var1)" and "Var2 is now \(var2)" in swift
func function1(var1: Int, var2: Int, swapping: (inout Int, inout Int) -> Void)  -> (String, String) {
    var a = var1
    var b = var2
    swap(&a, &b)
    return ("var1 is \(a)", "var2 is \(b)")
}

func swapping(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

let output = function1(var1: 1, var2: 2, swapping: swapping)
print(output.0)
print(output.1)

 //MARK: - 27. create a structur with a stored property 'number' and a computed property 'numberSquared' which is computed as the square of the stored property. Also declare a getter and setter for 'numberSquared'. the structure also contains a read cubes the stored property
struct MyStruct {
    var number: Int
    var numberSquared: Int {
        get {
            return number * number
        }
        set {
            number = Int(sqrt(Double(newValue)))
        }
    }
    var numberCubed: Int {
        get {
            return number * number * number
        }
    }
}

let obj1 = MyStruct(number: 2)

print(obj1.number)
print(obj1.numberSquared)
print(obj1.numberCubed)

 //MARK: - 28. Define an enumeration for a traffic signal. the signal must cycle between three diffrent states (red, yellow and green) every time it's next() method is called
enum Traffic {
    case red
    case yellow
    case green

    mutating func next() {
        switch self {
        case .red:
            self = .yellow
        case .yellow:
            self = .green
        case .green:
            self = .red
        }
    }
}

var signal = Traffic.red
print(signal)

signal.next()
print(signal)

signal.next()
print(signal)

 //MARK: - 29. create a class called VendingMachine. it must contain an array of strings called 'items' as a stored property. it must also contain a function 'getitem' which takes a string and compares it to the item is present, it should print 'Here you go!' or else it should throw a custom error ' itemNotAvailable'
class VendingMachine {
    var items: [String]

    init(items: [String]) {
        self.items = items
    }

    func getItem(_ item: String) throws {
        guard items.contains(item) else {
            throw VendingMachineError.itemNotAvailable
        }
        print("Here you go!")
    }
}

enum VendingMachineError: Error {
    case itemNotAvailable
}

let myVendingMachine = VendingMachine(items: ["Coke", "Pepsi", "Water"])
try myVendingMachine.getItem("Coke")
do {
    try myVendingMachine.getItem("Sprite")
} catch {
    print(error)
}

 //MARK: - 30. Reverse the String
print(object.reverseString(word: "Mekala Vamsi Krishna"))

 //MARK: - 31. Uppercase the first letter of a string
print(object.uppercase(the: "mekala vamsi krishna"))

 //MARK: 32. Write a function that takes a string as input and returns the first non-repeating character in the string. If there are no non-repeating characters, return nil.
print(object.firstNonRepeatingChar(s: "Verdict"))

 //MARK: 33. Find the index of the given key from an array
print(object.linearSearch([10, 30, 40, 20, 50, 60], key: 20))

 //MARK: 34. Adding 2 to each and every element in an array by using for in loop (Don't use Map Function)
var numbersArray = [2, 4, 7, 9, 3, 5]
print(numbersArray.map({$0 + 2}))

 //MARK: 35. Reverse an Array
print(object.reversTheArray("Mekala Vamsi Krishna"))
print(object.reverseArray(["vamsi", "Rakesh", "Raji", "Mohan"]))
var array = ["Vamsi", "Raki", "Raji", "Mohan"]
print(object.reverse(&array))

//MARK: 36. Rotate an Array
print(object.rotateArray([1, 2, 3, 4, 5], byPositions: 2))

//MARK: 37. Rearrange an Array
print(object.rearrangeArray([1, 2, 3, 4, 5, 6], fromIndex: 0, toIndex: 5))

 //MARK: 38. Higher Order Functions

 //MARK: Map

let mapNumbers = [1, 2, 3, 4, 5]
let squaredNumbers = mapNumbers.map { number1 in
    number1 * number1
}
print(squaredNumbers)

// //MARK: Compact Map
let mapStrings = ["1", "2", "3", "4", "Five"]
let convertedStrings = mapStrings.compactMap({
    Int($0)
})
print(convertedStrings)
//
// //MARK: flat Map
let flatmapNumbers = [1, 2, 3, 4, 5]
let nestedArrays = numbers.map {Array(repeating: $0, count: $0 ?? 0)}
let flattenedArray = flatmapNumbers.flatMap { Array(repeating: $0, count: $0) }
print(flattenedArray)

 //MARK: Reduce
let reduceNumbers = [1, 2, 3, 4, 5]
let newReduceArray = reduceNumbers.reduce(0, {
    $0 + $1
})
print(newReduceArray)

//MARK: 39. Generate Password
print(object.generatePassword(length: 8))

//MARK: 40. Checking Anagrams
print(object.areAnagrams(str1: "listen", str2: "silent"))
print(object.areAnagrams(str1: "Debit Card", str2: "Bad Credit"))
print(object.areAnagrams(str1: "hello", str2: "world"))

//MARK: 41. Fibonacci Series
print(object.fibonacciSeries(upto: 10))

// MARK: 42. Three Largest numbers in array(Acending Order)
let faang = FAANG()
print(faang.threeLargestNumbers(array: [1, 2, 4, 5, 8, 9, 12, 24]))

// MARK: finidng the indices of the added values equal to target
print(object.twoSum([2, 7, 8, 5, 8], 9))

// MARK: Finding the meridian of two arrays
print(object.findMedianSortedArrays([1, 2], [3, 4]))

// MARK: Finding the square of the largest number
print(object.maxArea([1,8,6,2,5,4,8,3,7]))
