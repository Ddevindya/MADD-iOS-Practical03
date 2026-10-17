// Exercise 03 - Tuples

func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    let average = Double(total) / Double(marks.count)

    return (total, average)
}

let result = analyzeMarks([60, 70, 80, 90])

print("Total: \(result.total)")
print("Average: \(result.average)")