import Foundation

enum FrogRiverOne {
    static func solution(_ X : Int, _ A : [Int]) -> Int {
        var minTimes: [Int: Int] = [:]
        for (time, position) in A.enumerated() {
            minTimes[position] = min(minTimes[position] ?? .max, time)
        }
        var maxTime = Int.min
        for position in 1...X {
            if let time = minTimes[position] {
                maxTime = max(time, maxTime)
            } else {
                return -1
            }
        }
        return maxTime
    }
}
