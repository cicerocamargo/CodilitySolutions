import Foundation

enum PassingCars {
    static func solution(_ A : [Int]) -> Int {
        var leftCarsSeen = 0
        var pairs = 0
        for car in A {
            if car == 0 {
                leftCarsSeen += 1
            } else {
                pairs += leftCarsSeen
                if pairs > 1_000_000_000 {
                    return -1
                }
            }
        }
        return pairs
    }
}
