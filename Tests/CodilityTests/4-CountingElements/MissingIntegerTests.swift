import XCTest
@testable import Codility

final class MissingIntegerTests: XCTestCase {
    func test() {
        var input: [Int] = []

        input = [1, 3, 6, 4, 1, 2]
        XCTAssertEqual(MissingInteger.solution(&input), 5)

        input = [1, 2, 3]
        XCTAssertEqual(MissingInteger.solution(&input), 4)

        input = [-1, -3]
        XCTAssertEqual(MissingInteger.solution(&input), 1)

        input = []
        XCTAssertEqual(MissingInteger.solution(&input), 1)

        input = (1...100_000).shuffled()
        XCTAssertEqual(MissingInteger.solution(&input), 100_001)

        input = (2...100_000).shuffled()
        XCTAssertEqual(MissingInteger.solution(&input), 1)
    }
}
