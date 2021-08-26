import Foundation

enum MissingInteger {
    static func solution(_ A : inout [Int]) -> Int {
        A.sort()
        var next = 1
        for elem in A {
            if elem == next {
                next += 1
            } else if elem > next {
                return next
            }
        }
        return next
    }
}
