import Foundation

public enum StripMode {
    case lettersOnly
    case lettersAndNumbers
    
    var charSet: String {
        switch self {
        case .lettersOnly:
            return "ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖabcdefghijklmnopqrstuvwxyzåäö.#@ "
        case .lettersAndNumbers:
            return "ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖabcdefghijklmnopqrstuvwxyzåäö0123456789.,;:#@ "
        }
    }
}

public protocol CrawlerStripper {
    func stripHTML() -> String
    func stripData(mode: StripMode) -> String
    func stripDictionary() -> String
}

extension String: CrawlerStripper {
    public func stripHTML() -> Self {
        self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
    public func stripData(mode: StripMode) -> Self {
        self.filter { mode.charSet.contains($0) }
    }
    
    public func stripDictionary() -> Self {
        let finnishWordsList = CrawlerFileManagerImpl().read(at: "/dict_FIN.txt").map { $0.dropFirst(2) }.map { $0.uppercased() }
        return self.components(separatedBy: .whitespaces).map { $0.uppercased() }.reduce(into: "") { (result: inout String, word: String) in
            if finnishWordsList.contains(word) { result.append(" " + word) }
        }
    }
}
