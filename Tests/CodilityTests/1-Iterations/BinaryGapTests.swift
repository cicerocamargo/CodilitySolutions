import XCTest
@testable import Codility

final class BinaryGapTests: XCTestCase {
    func test() {
        XCTAssertEqual(BinaryGap.solution(0), 0)
        XCTAssertEqual(BinaryGap.solution(1), 0)
        XCTAssertEqual(BinaryGap.solution(5), 1) // 101
        XCTAssertEqual(BinaryGap.solution(38), 2) // 100101
        XCTAssertEqual(BinaryGap.solution(1041), 5) // 10000010001
        XCTAssertEqual(BinaryGap.solution(32), 0) // 100000
        XCTAssertEqual(BinaryGap.solution(529), 4) // 1000010001
        XCTAssertEqual(BinaryGap.solution(7), 0) // 111
    }
}

