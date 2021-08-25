import Foundation

enum MaxCounters {
    static func solution(_ N : Int, _ A : [Int]) -> [Int] {
        var counters: [Int] = .init(repeating: 0, count: N)
        var minCounter = 0
        var maxCounter = 0
        for x in A {
            if (1...N).contains(x) { // increase counter X
                counters[x - 1] = max(counters[x - 1], minCounter) + 1
                maxCounter = max(maxCounter, counters[x - 1])
            } else {
                minCounter = maxCounter
            }
        }

        return counters.map { max($0, minCounter) }
    }
}
