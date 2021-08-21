import XCTest
@testable import Codility

final class OddOccurrencesInArrayTests: XCTestCase {
    func test() {
        XCTAssertEqual(OddOccurrencesInArray.solution([1]), 1)
        XCTAssertEqual(OddOccurrencesInArray.solution([1, 2, 1]), 2)
        XCTAssertEqual(OddOccurrencesInArray.solution([1, 2, 1, 1, 1]), 2)
        XCTAssertEqual(OddOccurrencesInArray.solution([9, 3, 9, 3, 9, 7, 9]), 7)
        XCTAssertEqual(
            OddOccurrencesInArray.solution(
                Array(0...1_000_000) + Array(0...1_000_000) + [1_000_001]
            ),
            1_000_001
        )
    }
}

