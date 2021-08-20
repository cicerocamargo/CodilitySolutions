import Foundation

enum TapeEquilibrium {
    static func solution(_ A : [Int]) -> Int {
        var rightSum = A.reduce(0, +)
        var leftSum = 0
        var minDiff = Int.max
        for number in A.dropLast() {
            leftSum += number
            rightSum -= number
            minDiff = min(abs(rightSum - leftSum), minDiff)
        }
        return minDiff
    }
}
