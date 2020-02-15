import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CrawlerFileManagerTest.allTests),
        testCase(CrawlerStripperTest.allTests),
    ]
}
#endif
