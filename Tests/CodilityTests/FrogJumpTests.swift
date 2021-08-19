import XCTest
@testable import Codility

final class FrogJumpTests: XCTestCase {
    func test() {
        XCTAssertEqual(FrogJump.solution(1, 1, 1), 0)
        XCTAssertEqual(FrogJump.solution(1, 2, 1), 1)
        XCTAssertEqual(FrogJump.solution(1, 6, 2), 3)
        XCTAssertEqual(FrogJump.solution(10, 85, 30), 3)
        XCTAssertEqual(FrogJump.solution(100, 201, 100), 2)
        XCTAssertEqual(FrogJump.solution(100, 201, 101), 1)
        XCTAssertEqual(FrogJump.solution(100, 201, 1), 101)
        XCTAssertEqual(FrogJump.solution(5, 105, 3), 34)
    }
}

