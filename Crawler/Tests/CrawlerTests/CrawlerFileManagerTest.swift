import XCTest
@testable import CrawlerLibrary

class CrawlerFileManagerTest: XCTestCase {

    private let fileManager: CrawlerFileManager = CrawlerFileManagerImpl()

    func test_read() {
        let contents = fileManager.read(at: "/log.txt")
        XCTAssertNotNil(contents)
        XCTAssertGreaterThan(contents.count, 0)
    }
    
    static var allTests = [
        ("test_read", test_read),
    ]
}
