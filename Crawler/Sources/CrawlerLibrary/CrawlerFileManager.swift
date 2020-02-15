import Foundation

public protocol CrawlerFileManager {
    func read(at path: String) -> [String]
    func write(content: [String:Int], to path: String)
}

public struct CrawlerFileManagerImpl: CrawlerFileManager {
    public init() {}
    
    public func read(at path: String) -> [String] {
        let directory = FileManager.default.currentDirectoryPath.appending(path)
        guard FileManager.default.fileExists(atPath: directory) else { return [] }
        
        return try! String(contentsOfFile: directory, encoding: .utf8).components(separatedBy: .newlines).filter { !$0.isEmpty }
    }

    public func write(content: [String:Int], to path: String) {
        let directory = FileManager.default.currentDirectoryPath.appending(path)
        guard FileManager.default.fileExists(atPath: directory) else { return }
        
        try! flat(tuple: content).write(to: URL(string: "file://" + directory)!, atomically: true, encoding: .utf8)
    }
    
    private func flat(tuple: [String:Int]) -> String {
        tuple.reduce(into: "Word; Occurrence\n") { (result: inout String, tuple: (key: String, value: Int)) in
            result += "\(tuple.key); \(tuple.value)\n"
        }
    }
}