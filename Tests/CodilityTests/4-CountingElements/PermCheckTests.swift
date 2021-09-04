import XCTest
@testable import Codility

final class PermCheckTests: XCTestCase {
    func test() {
        XCTAssertEqual(PermCheck.solution([1]), 1)
        XCTAssertEqual(PermCheck.solution([1, 2]), 1)
        XCTAssertEqual(PermCheck.solution([2, 1]), 1)
        XCTAssertEqual(PermCheck.solution([1, 1]), 0)
        XCTAssertEqual(PermCheck.solution([2, 3]), 0)
        XCTAssertEqual(PermCheck.solution([4, 1, 3, 2]), 1)
        XCTAssertEqual(PermCheck.solution([4, 1, 3]), 0)
    }
}
