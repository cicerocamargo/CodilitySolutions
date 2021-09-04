enum CyclicRotation {
    static func solution(_ A: inout [Int], _ K: Int) -> [Int] {
        guard !A.isEmpty && K > 0 else { return A }
        if K % A.count == 0 { return A }
        let minRotations = K > A.count ? K % A.count : K
        return Array(A.suffix(minRotations) + A.prefix(A.count - minRotations))
    }
}
