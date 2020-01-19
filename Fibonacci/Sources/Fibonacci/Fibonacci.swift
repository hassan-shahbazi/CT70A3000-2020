import Foundation

protocol Fibonacci {
    init(length: Int)
    func count(from start: Int) throws -> [String]
    func save(_ result: [String], to file: String) throws
}
extension Fibonacci {
    init() {
        self.init(length: 10)
    }

    func count() throws -> [String] {
        return try self.count(from: 0)
    }

    func save(_ result: [String]) throws {
        try self.save(result, to: "/result.txt")
    }
}

struct FibonacciImpl: Fibonacci {
    private var result: [String] = []
    private let length: Int

    init(length: Int) {
        self.length = length
    }

    func count(from start: Int) throws -> [String] {
        guard self.length >= 0 else { throw FibExceptions.notValidLength }
        guard start >= 0 else { throw FibExceptions.notValidStartingPoint }

        return [Int](0..<start+self.length)
                            .map { 
                                String(calculateFibSeries(for: Int64($0))) 
                            }
                            .suffix(self.length)
    }

    func save(_ result: [String], to file: String) throws {
        let directory = FileManager.default.currentDirectoryPath.appending(file)
        guard FileManager.default.fileExists(atPath: directory) else { throw FibExceptions.fileNotFound }
        
        try result.joined(separator: "\n").write(to: URL(string: "file://" + directory)!, atomically: true, encoding: .utf8)
    }
}

extension FibonacciImpl {
    private func calculateFibSeries(for val: Int64) -> Int64 {
        if val == 0 { 
            return 0 
        }
        if val == 1 || val == 2 { 
            return 1 
        }
        return calculateFibSeries(for: val - 2) + calculateFibSeries(for: val - 1)
    }
}