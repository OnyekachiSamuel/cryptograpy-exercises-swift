
import Foundation

public class XorCombination {

    private init() {}

    public static var shared = XorCombination()


    private func decodeHex(from hexString: String) -> [UInt8] {

        if hexString.count & 1 != 0 {
            return [0]
        }

        var index = hexString.startIndex
        var result : [UInt8] = []

        for _ in  0..<hexString.count / 2 {

            let nextIndex = hexString.index(index, offsetBy: 2)

            if let hexDecodedValue = UInt8(hexString[index..<nextIndex], radix: 16) {

                result.append(hexDecodedValue)
            }

            index = nextIndex
        }
        return result
    }

    public func xorCombiner(_ hexStringA: String, _ hexStringB: String) -> String {

        if hexStringA.count == hexStringB.count {

            var result = String()

            let hexDecodedValuesA = decodeHex(from: hexStringA)
            let hexDecodedValuesB = decodeHex(from: hexStringB)

            for index in 0..<hexDecodedValuesA.count {
                 let hexString = String(format:"%2x", (hexDecodedValuesA[index] ^ hexDecodedValuesB[index]))
                result.append(hexString)
            }

            return result
        } else {

            return "Length of the two hex Strings mismatch"
        }
    }
}
