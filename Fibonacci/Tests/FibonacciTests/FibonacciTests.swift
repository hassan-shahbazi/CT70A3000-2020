import XCTest
@testable import Fibonacci

final class FibonacciTests: XCTestCase {
    
    private var fib: Fibonacci!

    func test_throwInvalidInput() {
        fib = FibonacciImpl(start: -1)

        do {
            _ = try fib.count()

            /// We except to get the error in `catch` closure
            /// So the following line is not allowed to be executed.
            XCTAssertTrue(false, "The test should catch the error")
        } catch {
            XCTAssertNotNil(error as? FibExceptions)
            XCTAssertEqual(error as! FibExceptions, FibExceptions.notValidStartingPoint)
        }
    }

    func test_getFibOutput_1() {
        fib = FibonacciImpl(start: 3)
        do {
            let result = try fib.count()
            
            XCTAssertNotNil(result, "The result cannot be nil")
            XCTAssertEqual(result.count, 3, "The result count should be equal to the input")
            XCTAssertEqual(result, ["0", "1", "1"], "The test result should be valid")
        } catch {
            /// We do not except to get any error here
            XCTAssertTrue(false)
        }
    }

    func test_getFibOutput_2() {
        /// Use default initializer: 10
        fib = FibonacciImpl()
        do {
            let result = try fib.count()
            
            XCTAssertNotNil(result, "The result cannot be nil")
            XCTAssertEqual(result.count, 10, "The result count should be equal to the input")
            XCTAssertEqual(result, ["0", "1", "1", "2", "3", "5", "8", "13", "21", "34"], "The test result should be valid")
        } catch {
            /// We do not except to get any error here
            XCTAssertTrue(false)
        }
    }

    func test_getFibOutput_3() {
        fib = FibonacciImpl(start: 30)
        do {
            let result = try fib.count()
            
            XCTAssertNotNil(result, "The result cannot be nil")
            XCTAssertEqual(result.count, 30, "The result count should be equal to the input")
            XCTAssertEqual(result.last, "514229", "The test result should be valid")
        } catch {
            /// We do not except to get any error here
            XCTAssertTrue(false)
        }
    }

    func test_saveResultToInvalidFile() {
        fib = FibonacciImpl()
        do {
            try fib.save(["1", "2"], to: "/invalidFileDirectory.txt")

            /// The file does not exist, so the following should not be run
            XCTAssertTrue(false, "The test should catch the error")
        } catch {
            XCTAssertNotNil(error)
        }
    }

    func test_saveFakeResultToFile() {
        fib = FibonacciImpl()
        do {
            try fib.save(["1", "2", "3"], to: "/result.txt")

            XCTAssertTrue(true, "The save process is done")
        } catch {
            /// We do not except to get any error here
            XCTAssertTrue(false, "\(error)")
        }
    }

    func test_saveVerifiedResultToFile() {
        fib = FibonacciImpl(start: 10)
        do {
            let result = try fib.count()
            try fib.save(result, to: "/result.txt")

            let file = "file://" + FileManager.default.currentDirectoryPath.appending("/result.txt")
            let contents = try String(contentsOf: URL(string: file)!, encoding: .utf8)
            XCTAssertNotNil(contents, "The file's content shouldn't be nil")

            let loadedResult = contents.components(separatedBy: "\n")
            XCTAssertEqual(loadedResult, result)
        } catch {
            /// We do not except to get any error here
            XCTAssertTrue(false, "\(error)")
        }
    }

    #if os(Linux)
    static var allTests = [
        ("testExample", testExample),
    ]
    #endif
}
