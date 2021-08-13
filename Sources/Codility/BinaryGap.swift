enum BinaryGap {
    static func solution(_ N : Int) -> Int {
        var currentGap = 0
        var longestGap = 0
        var isInsideGap = false

        for offset in 0..<64 {
            if (1 << offset) & N > 0 {
                if isInsideGap {
                    longestGap = max(currentGap, longestGap)
                    isInsideGap = false
                }
            } else {
                if offset > 0 && (1 << (offset-1)) & N > 0 {
                    isInsideGap = true
                    currentGap = 0
                }
                currentGap += 1
            }
        }

        return longestGap
    }
}
