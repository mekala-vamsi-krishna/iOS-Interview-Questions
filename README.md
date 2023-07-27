# iOS-Interview-Questions

## Open Source Repository

Title: Join the Revolution of iOS Development: Contribute to Our GitHub Repository

### Introduction:
Welcome to our dynamic GitHub repository, a thriving hub for iOS developers like you! We invite you to be part of the revolution in iOS development by contributing your expertise, insights, and passion to our collaborative iOS interview questions.

Why Contribute:

Unleash Your Creativity: Our repository is a MacOS Terminal for iOS developers to experiment, innovate, and bring their creative problem solving skills to life. Whether it's building new features, refining existing ones, or proposing cutting-edge concepts, your contributions are bound to make a significant difference.

Sharpen Your Skills: Collaboration with a diverse group of skilled developers is a fantastic opportunity to enhance your proficiency in iOS development. You'll learn new techniques, discover alternative approaches, and gain valuable insights from experts across the globe.

Boost Your Portfolio: Contributing to a prominent open-source project on GitHub can significantly strengthen your developer portfolio. Potential employers and fellow developers will recognize your active involvement and commitment to the iOS community, setting you apart from the rest.

Impact Users Globally: The applications developed from this repository have the potential to impact the lives of millions of users worldwide. Your code could be the driving force behind an app that solves real-world problems and makes a difference in people's lives.

Collaborate and Network: Our welcoming community of iOS enthusiasts fosters a friendly and supportive environment for collaboration. Connect with like-minded individuals, share knowledge, and build lasting relationships that can lead to exciting future opportunities.

Recognition and Appreciation: Your contributions will be acknowledged and appreciated by the community, giving you a sense of pride in your work and motivating you to keep pushing the boundaries of iOS development.

## You can find, some of our problem solving examples here, how you need to contribute in the repository,

#### Remove Duplicates using Equatable Protocol
```
let numbers = [1, 2, 2, 3, 3, 3, 4, 4, 5, 5, 5]
let chars = ["a", "b", "c", "c", "c", "b"]
var tempNumbers = [Int]()

extension Array where Element: Equatable {
    guard !self.isEmpty else { return [] }
    
    func removeDuplictes() -> [Element] {
        var tempNumbers: [Element] = []
        for number in numbers {
            if !tempNumbers.contains(number) {
                tempNumbers.append(number)
            }
        }
        self.forEach { item in
            if !tempNumbers.contains(item) {
                tempNumbers.append(item)
            }
        }
        return tempNumbers
    }
}

func removeDuplicates(arr: [Int]) -> [Int] {
    var tempNumbers = [Int]()
    for number in numbers {
        if !tempNumbers.contains(number) {
            tempNumbers.append(number)
        }
    }
    return tempNumbers
}

```
### Factorial

```
    func factorial(fact: Int) -> Int {

        if fact == 0 {
            return 1
        } else {
            return fact * factorial(fact: fact - 1)
        }
    }
```

### Anagrams

```
    func areAnagrams(str1: String, str2: String) -> Bool {
        let cleanedStr1 = str1.lowercased().replacingOccurrences(of: " ", with: "")
        let cleanedStr2 = str2.lowercased().replacingOccurrences(of: " ", with: "")
        
        guard str1.count == str2.count else {
            return false
        }
        
        let charArray1 = Array(cleanedStr1)
        let charArray2 = Array(cleanedStr2)
        
        let sortedArray1 = charArray1.sorted()
        let sortedArray2 = charArray2.sorted()
        
        return sortedArray1 == sortedArray2
    }
```
### Fibonacci Series

```
    func fibonacciSeries(upto number: Int) -> [Int] {
        var series = [Int]()
        
        if number <= 0 {
            return series
        } else if number == 1 {
            series.append(0)
        } else if number == 1{
            series = [0, 1]
        } else {
            series = [0, 1]
            for i in 2 ..< number - 1 {
                let nextNumber = series[i - 1] + series[i - 2]
                series.append(nextNumber)
            }
        }
        return series
    }
```
