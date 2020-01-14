import Foundation

enum FibExceptions: Error {
    case notValidStartingPoint
    case fileNotFound

    var localizedDescription: String {
        switch self {
            case .notValidStartingPoint:
                return "The starting number should be greater than 0"
            case .fileNotFound:
                return "The result file is not exists"
        }
    }
}