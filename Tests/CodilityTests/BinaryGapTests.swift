import XCTest
@testable import Codility

final class BinaryGapTests: XCTestCase {
    func test() {
        XCTAssertEqual(BinaryGap.solution(1041), 5)
        XCTAssertEqual(BinaryGap.solution(0), 0)
        XCTAssertEqual(BinaryGap.solution(5), 1) // 101
        XCTAssertEqual(BinaryGap.solution(41), 2) // 101001
        XCTAssertEqual(BinaryGap.solution(32), 0) // 100000
        XCTAssertEqual(BinaryGap.solution(51712), 2) // 110010100000000
    }
}

