// Exercise 06 - Structures, Methods, Classes, and Value vs Reference Types

// ----------------------------------
// Part 1 - Struct with Computed Property
// ----------------------------------

enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct Student {
    var name: String
    var mark: Int

    var grade: Grade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }

    func displayDetails() {
        print("\(name) received \(mark) marks - Grade \(grade.rawValue)")
    }
}

let student = Student(name: "Amal", mark: 72)

print("Student Name: \(student.name)")
print("Grade: \(student.grade.rawValue)")
student.displayDetails()

// ----------------------------------
// Part 2 - Mutating Method
// ----------------------------------

struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()

counter.increment()
counter.increment()

print("Counter: \(counter.count)")

// ----------------------------------
// Part 3 - Class
// ----------------------------------

class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(
    name: "Nushkan",
    module: "SE4041"
)

lecturer.introduce()

// ----------------------------------
// Part 4 - Struct Value Type
// ----------------------------------

struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint

secondPoint.x = 99

print("First Point: \(firstPoint.x)")
print("Second Point: \(secondPoint.x)")

// ----------------------------------
// Part 5 - Class Reference Type
// ----------------------------------

class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter

secondCounter.count = 99

print("First Counter: \(firstCounter.count)")
print("Second Counter: \(secondCounter.count)")