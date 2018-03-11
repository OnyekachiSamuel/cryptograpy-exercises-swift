import XCTest

@testable import CryptoSolutions

class XorCombinationTests: XCTestCase {

    func testXorCombiner() {

        let testCase = XorCombination.shared.xorCombiner("1c0111001f010100061a024b53535009181c", "686974207468652062756c6c277320657965")
        XCTAssertEqual(testCase, "746865206b696420646f6e277420706c6179")
    }
}
