import XCTest
@testable import Codility

final class OddOccurrencesInArrayTests: XCTestCase {
    func test() {
        XCTAssertEqual(OddOccurrencesInArray.solution([1]), 1)
        XCTAssertEqual(OddOccurrencesInArray.solution([1, 1, 2]), 2)
        XCTAssertEqual(OddOccurrencesInArray.solution([1, 2, 1]), 2)
        XCTAssertEqual(OddOccurrencesInArray.solution([1, 1, 1, 1, 2]), 2)
    }
}

