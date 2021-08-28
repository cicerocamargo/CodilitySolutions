import XCTest
@testable import Codility

final class CountDivTests: XCTestCase {
    func test() {
        XCTAssertEqual(CountDiv.solution(6, 11, 2), 3)
        XCTAssertEqual(CountDiv.solution(1, 2, 3), 0)
        XCTAssertEqual(CountDiv.solution(1, 3, 3), 1)
        XCTAssertEqual(CountDiv.solution(-3, 3, 3), 3)
        XCTAssertEqual(CountDiv.solution(-1, 3, 3), 2)
        XCTAssertEqual(CountDiv.solution(0, 2_000_000_000, 1), 2_000_000_001)
        XCTAssertEqual(CountDiv.solution(0, 2_000_000_000, 2), 1_000_000_001)
        XCTAssertEqual(CountDiv.solution(11, 345, 17), 20)
    }
}

