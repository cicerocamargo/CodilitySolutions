import XCTest
@testable import Codility

final class GenomicRangeQueryTests: XCTestCase {
    func test() {
        XCTAssertEqual(
            GenomicRangeQuery.solution(
                "CAGCCTA",
                [2, 5, 0],
                [4, 5, 6]
            ),
            [2, 4, 1]
        )

        XCTAssertEqual(
            GenomicRangeQuery.solution(
                "A",
                [0],
                [0]
            ),
            [1]
        )

        XCTAssertEqual(
            GenomicRangeQuery.solution(
                "TTTTTTTTTTTTT",
                [2, 5, 0],
                [4, 5, 6]
            ),
            [4, 4, 4]
        )

        XCTAssertEqual(
            GenomicRangeQuery.solution(
                String(Array(repeating: "T", count: 99_999)) + "A",
                [0, 0],
                [99_998, 99_999]
            ),
            [4, 1]
        )
    }
}

