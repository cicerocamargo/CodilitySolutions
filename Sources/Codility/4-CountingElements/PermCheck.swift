import Foundation

enum PermCheck {
    static func solution(_ A : [Int]) -> Int {
        var checks: [Bool] = .init(repeating: false, count: A.count)

        for elem in A {
            let index = elem - 1
            if index >= checks.count || checks[index] {
                return 0
            }
            checks[index] = true
        }

        return 1
    }
}
