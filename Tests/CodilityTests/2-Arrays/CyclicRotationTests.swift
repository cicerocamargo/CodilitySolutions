import XCTest
@testable import Codility

final class CyclicRotationTests: XCTestCase {
    func test() {
        var array: [Int] = []
        XCTAssertEqual(CyclicRotation.solution(&array, 0), [])

        array = [0]
        XCTAssertEqual(CyclicRotation.solution(&array, 0), [0])

        XCTAssertEqual(CyclicRotation.solution(&array, 9), [0])

        array = [0, 1]
        XCTAssertEqual(CyclicRotation.solution(&array, 1), [1, 0])

        array = [0, 1, 2]
        XCTAssertEqual(CyclicRotation.solution(&array, 3), [0, 1, 2])

        array = [0, 1, 2]
        XCTAssertEqual(CyclicRotation.solution(&array, 4), [2, 0, 1])

        array = [3, 8, 9, 7, 6]
        XCTAssertEqual(CyclicRotation.solution(&array, 3), [9, 7, 6, 3, 8])

        array = [1, 1, 2, 3, 5]
        XCTAssertEqual(CyclicRotation.solution(&array, 42), [3, 5, 1, 1, 2])
    }
}

