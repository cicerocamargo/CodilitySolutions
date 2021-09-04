import Foundation

enum GenomicRangeQuery {
    static func solution(
        _ S : String,
        _ P : [Int],
        _ Q : [Int]
    ) -> [Int] {
        var counters: [String.Element: Int] = [
            "A": 0,
            "C": 0,
            "G": 0
        ]

        var history: [String.Element: [Int]] = [
            "A": Array(repeating: 0, count: S.count + 1),
            "C": Array(repeating: 0, count: S.count + 1),
            "G": Array(repeating: 0, count: S.count + 1)
        ]

        for (index, elem) in S.enumerated() {
            switch elem {
            case "A", "C", "G": counters[elem]! += 1
            default: break
            }

            history["A"]![index + 1] = counters["A"]!
            history["C"]![index + 1] = counters["C"]!
            history["G"]![index + 1] = counters["G"]!
        }

        var result: [Int] = []

        for index in P.indices {
            let lowerBound = P[index]
            let upperBound = Q[index]

            if history["A"]![upperBound + 1] > history["A"]![lowerBound] {
                // There's an A in the range
                result.append(1)
            } else if history["C"]![upperBound + 1] > history["C"]![lowerBound] {
                // There's a C in the range
                result.append(2)
            } else if history["G"]![upperBound + 1] > history["G"]![lowerBound] {
                // There's a G in the range
                result.append(3)
            } else {
                result.append(4)
            }
        }

        return result
    }
}
