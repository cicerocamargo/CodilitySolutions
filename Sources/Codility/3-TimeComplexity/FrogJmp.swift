import Foundation

enum FrogJmp {
    static func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        let distance = (Y - X)
        return (distance / D) + (distance % D > 0 ? 1 : 0)
    }
}
