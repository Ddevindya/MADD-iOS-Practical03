// Exercise 01 - Functions

func calculateAverage(_ mark1: Double, _ mark2: Double, _ mark3: Double) -> Double {
    let total = mark1 + mark2 + mark3
    return total / 3.0
}

let average = calculateAverage(75, 82, 68)
print("Average: \(average)")

func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }

    return "Fail"
}

print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))