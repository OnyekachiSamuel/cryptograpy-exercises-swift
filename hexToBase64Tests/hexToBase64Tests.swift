
import XCTest

@testable import hexToBase64

class hexToBase64Tests: XCTestCase {

    func testConvertHexToBase64() {

        let testCase = HexToBase64.convertHexToBase64(from: "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d")
        let expectedResult = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

        XCTAssertEqual(testCase, expectedResult)
    }
    
}
