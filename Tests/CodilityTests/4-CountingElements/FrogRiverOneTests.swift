import XCTest
@testable import Codility

final class FrogRiverOneTests: XCTestCase {
    func test() {
        XCTAssertEqual(FrogRiverOne.solution(5, [1, 3, 1, 4, 2, 3, 5, 4]), 6)
        XCTAssertEqual(FrogRiverOne.solution(5, [1, 3, 1, 4, 2, 3, 4]), -1)
        XCTAssertEqual(FrogRiverOne.solution(5, [1, 3, 1, 4, 2, 3, 4, 5]), 7)
        XCTAssertEqual(FrogRiverOne.solution(5, [3, 4, 2, 3, 4, 5]), -1)
        XCTAssertEqual(FrogRiverOne.solution(5, [2, 3, 2, 4, 2, 3, 5, 1]), 7)
        XCTAssertEqual(FrogRiverOne.solution(5, []), -1)
    }
}
