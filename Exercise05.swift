// Exercise 05 - Enumerations

enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let status = ModuleStatus.inProgress

print("Module Status: \(status.rawValue)")