import Foundation

public enum SortType {
    case word
    case sentence
    
    var splitter: String {
        switch self {
        case .word: return " "
        case .sentence: return "."
        }
    }
}

public protocol CrawlerSorter {
    func sort(mode: SortType) -> [String:Int]
}

extension String: CrawlerSorter {
    public func sort(mode: SortType) -> [String:Int] {
        self.components(separatedBy: mode.splitter).reduce(into: [:]) { (result: inout [String:Int], word: String) in
            if let counter = result[word] {
                result[word] = counter + 1
            } else {
                result[word] = 1
            }
        }
    }
}