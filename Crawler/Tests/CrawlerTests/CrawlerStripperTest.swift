import XCTest
@testable import CrawlerLibrary

class CrawlerStripperTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func test_strip_data() {
        let testString = "This text contains numbers that should be eliminated: 1 - 2 - 3. Done"
        XCTAssertEqual(testString.stripData(mode: .lettersOnly), "This text contains numbers that should be eliminated     . Done")
    }
    
    func test_strip_html() {
        let testHTML = "This is a HTML string: <p>Paragraph</p>"
        XCTAssertEqual(testHTML.stripHTML(), "This is a HTML string: Paragraph")
    }
    
    func test_strip_dictionary() {
        let testDictionary = "This is a string containing words: KATSO , JOKA , Hello , UUTISET , All , LISÄÄ"
        XCTAssertEqual(testDictionary.stripDictionary(), " KATSO JOKA UUTISET LISÄÄ")
    }
    
    func test_strip_all() {
        let testString = "<p><h> KATSO, JOKA, Hello, UUTISET, All, LISÄÄ +2</></p>"
        
        XCTAssertEqual(testString
                                .stripHTML()
                                .stripData(mode: .lettersOnly)
                                .stripDictionary(), " KATSO JOKA UUTISET LISÄÄ")
    }
    
    func test_sort_stripped() {
        let testString = "<p><h> KATSO, JOKA, Hello, UUTISET, All, LISÄÄ +2 JOKA</></p>"
        let strippedSortedString = testString
                                    .stripHTML()
                                    .stripData(mode: .lettersOnly)
                                    .stripDictionary()
                                    .sort(mode: .word)
        
        XCTAssertEqual(strippedSortedString["JOKA"], 2)
        XCTAssertEqual(strippedSortedString["KATSO"], 1)
    }
    
    static var allTests = [
        ("test_strip_data", test_strip_data),
        ("test_strip_html", test_strip_html),
        ("test_strip_dictionary", test_strip_dictionary),
    ]
}
