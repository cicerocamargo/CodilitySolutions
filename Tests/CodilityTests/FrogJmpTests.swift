import XCTest
@testable import Codility

final class FrogJmpTests: XCTestCase {
    func test() {
        XCTAssertEqual(FrogJmp.solution(10, 85, 30), 3)
        XCTAssertEqual(FrogJmp.solution(1, 1, 30), 0)
        XCTAssertEqual(FrogJmp.solution(1, 1_000_000, 1), 999_999)
        XCTAssertEqual(FrogJmp.solution(1, 1_000_000, 999_999), 1)
        XCTAssertEqual(FrogJmp.solution(1, 1_000_000, 1_000_000), 1)
        XCTAssertEqual(FrogJmp.solution(1, 4, 2), 2)
    }
}

