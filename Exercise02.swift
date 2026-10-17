// Exercise 02 - guard

func checkStudent(name: String?, mark: Int?) {

    guard let name = name else {
        print("Student name unavailable")
        return
    }

    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }

    print("\(name) received \(mark) marks")
}

checkStudent(name: nil, mark: 75)
checkStudent(name: "Kamal", mark: nil)
checkStudent(name: "Kamal", mark: 75)