import Foundation

enum PermMissingElem {
    static func solution(_ A: [Int]) -> Int {
        var allNumbers = Set(1...(A.count + 1))
        for number in A {
            allNumbers.remove(number)
        }
        return allNumbers.first!
    }
}
