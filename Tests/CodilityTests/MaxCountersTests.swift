import XCTest
@testable import Codility

final class MaxCountersTests: XCTestCase {
    func test() {
        XCTAssertEqual(
            MaxCounters.solution(5, [3, 4, 4, 6, 1, 4, 4]),
            [3, 2, 2, 4, 2]
        )

        XCTAssertEqual(
            MaxCounters.solution(5, [1, 6]),
            [1, 1, 1, 1, 1]
        )

        XCTAssertEqual(
            MaxCounters.solution(1, [1]),
            [1]
        )

        XCTAssertEqual(
            MaxCounters.solution(100_000, Array(1...100_000)),
            Array(repeating: 1, count: 100_000)
        )

        // all max counter
        XCTAssertEqual(
            MaxCounters.solution(100_000, Array(repeating: 100_001, count: 100_000)),
            Array(repeating: 0, count: 100_000)
        )
    }
}

