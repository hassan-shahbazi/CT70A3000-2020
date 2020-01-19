import XCTest
@testable import Fibonacci

final class FibonacciTests: XCTestCase {
    
    private var fib: Fibonacci!

    func test_throwInvalidInput_Lenght() {
        fib = FibonacciImpl(length: -1)

        do {
            _ = try fib.count(from: 0)

            /// We except to get the error in `catch` closure
            /// So the following line is not allowed to be executed.
            XCTAssertTrue(false, "The test should catch the error")
        } catch {
            XCTAssertNotNil(error as? FibExceptions)
            XCTAssertEqual(error as! FibExceptions, FibExceptions.notValidLength)
        }
    }

    func test_throwInvalidInput_Start() {
        fib = FibonacciImpl(length: 3)

        do {
            _ = try fib.count(from: -1)

            /// We except to get the error in `catch` closure
            /// So the following line is not allowed to be executed.
            XCTAssertTrue(false, "The test should catch the error")
        } catch {
            XCTAssertNotNil(error as? FibExceptions)
            XCTAssertEqual(error as! FibExceptions, FibExceptions.notValidStartingPoint)
        }
    }

    func test_getFibOutput_Length() {
        fib = FibonacciImpl(length: 3)
        do {
            let result = try fib.count(from: 0)
            
            XCTAssertNotNil(result, "The result cannot be nil")
            XCTAssertEqual(result.count, 3, "The result count should be equal to the input")
            XCTAssertEqual(result, ["0", "1", "1"], "The test result should be valid")
        } catch {
            /// We do not except to get any error here
            XCTAssertTrue(false)
        }
    }

    func test_getFibOutput_DefaultParameters() {
        /// Use default initializer: 10
        fib = FibonacciImpl()
        do {
            /// Use default paramtere: 0
            let result = try fib.count()
            
            XCTAssertNotNil(result, "The result cannot be nil")
            XCTAssertEqual(result.count, 10, "The result count should be equal to the input")
            XCTAssertEqual(result, ["0", "1", "1", "2", "3", "5", "8", "13", "21", "34"], "The test result should be valid")
        } catch {
            /// We do not except to get any error here
            XCTAssertTrue(false)
        }
    }

    func test_getFibOutput_LengthStart() {
        fib = FibonacciImpl(length: 20)
        do {
            let result = try fib.count(from: 10)
            
            XCTAssertNotNil(result, "The result cannot be nil")
            XCTAssertEqual(result.count, 20, "The result count should be equal to the input")
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
        fib = FibonacciImpl(length: 30)
        do {
            let result = try fib.count(from: 3)
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
        ("test_throwInvalidInput", test_throwInvalidInput),
        ("test_getFibOutput_1", test_getFibOutput_1),
        ("test_getFibOutput_2", test_getFibOutput_2),
        ("test_getFibOutput_3", test_getFibOutput_3),
        ("test_saveResultToInvalidFile", test_saveResultToInvalidFile),
        ("test_saveFakeResultToFile", test_saveFakeResultToFile),
        ("test_saveVerifiedResultToFile", test_saveVerifiedResultToFile),
    ]
    #endif
}
