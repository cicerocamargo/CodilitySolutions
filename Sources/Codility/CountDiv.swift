import Foundation

enum CountDiv {
    static func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
        let _K = Double(K)
        // from A, let's find the next number divisible by K
        let aCeil = ceil(Double(A) / _K) * _K
        // from B, let's find the last number divisible by K
        let bFloor = floor(Double(B) / _K) * _K
        let count = (bFloor - aCeil) / _K
        return Int(count + 1) // +1 is to include both ends in the count
    }
}
