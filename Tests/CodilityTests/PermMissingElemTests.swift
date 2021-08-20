import XCTest
@testable import Codility

final class PermMissingElemTests: XCTestCase {
    func test() {
        XCTAssertEqual(PermMissingElem.solution([2, 3, 1, 5]), 4)
        XCTAssertEqual(PermMissingElem.solution([2]), 1)
        XCTAssertEqual(PermMissingElem.solution([1]), 2)
        XCTAssertEqual(
            PermMissingElem.solution(Array(2...100_000) + [100_001]),
            1
        )
    }
}

