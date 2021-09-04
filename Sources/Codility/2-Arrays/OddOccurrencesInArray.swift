enum OddOccurrencesInArray {
    static func solution(_ A: [Int]) -> Int {
        var seen = Set<Int>()
        for item in A {
            if seen.contains(item) {
                seen.remove(item)
            } else {
                seen.insert(item)
            }
        }
        return seen.first!
    }
}
