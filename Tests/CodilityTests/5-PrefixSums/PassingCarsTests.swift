import XCTest
@testable import Codility

final class PassingCarsTests: XCTestCase {
    func test() {
        XCTAssertEqual(PassingCars.solution([0, 1, 0, 1, 1]), 5)
        XCTAssertEqual(PassingCars.solution([]), 0)
        XCTAssertEqual(
            PassingCars.solution(
                Array<Int>(repeating: 0, count: 500_000)
                    + Array<Int>(repeating: 1, count: 500_000)
            ),
            -1
        )
    }
}

