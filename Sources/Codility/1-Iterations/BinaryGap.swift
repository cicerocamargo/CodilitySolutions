enum BinaryGap {
    static func solution(_ N : Int) -> Int {
        var isInsideGap = false
        var currentGapSize = 0
        var previousBitIsOn = false
        var maxGapSize = 0
        for bitIndex in 0...31 {
            let mask = (1 << bitIndex)
            if (N & mask) > 0 { // bit at `bitIndex` is on
                previousBitIsOn = true
                if isInsideGap {
                    maxGapSize = max(maxGapSize, currentGapSize)
                    isInsideGap = false
                }
            } else {
                if previousBitIsOn {
                    isInsideGap = true
                    previousBitIsOn = false
                    currentGapSize = 0
                }
                if isInsideGap {
                    currentGapSize += 1
                }
            }
        }

        return maxGapSize
    }
}
