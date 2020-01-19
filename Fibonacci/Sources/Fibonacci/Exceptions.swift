import Foundation

enum FibExceptions: Error {
    case notValidStartingPoint
    case notValidLength
    case fileNotFound

    var localizedDescription: String {
        switch self {
            case .notValidStartingPoint:
                return "The starting number should be greater than 0"
            case .notValidLength:
                return "The length of the series is not valid"
            case .fileNotFound:
                return "The result file is not exists"
        }
    }
}