import XCTest
@testable import Codility

final class TapeEquilibriumTests: XCTestCase {
    func test() {
        XCTAssertEqual(TapeEquilibrium.solution([1, 1]), 0)
        XCTAssertEqual(TapeEquilibrium.solution([1, 2]), 1)
        XCTAssertEqual(TapeEquilibrium.solution([1, 2, 3]), 0)
        XCTAssertEqual(TapeEquilibrium.solution([-1_000, 1_000]), 2_000)
    }
}

