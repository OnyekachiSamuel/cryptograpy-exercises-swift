
import Foundation


public struct HexToBase64 {

    public init(){}

    public static func convertHexToBase64(from hexString: String) -> String {

        var bytes = [UInt8]()
        let length = hexString.count

        if length & 1 != 0 {
            return ""
        }


        bytes.reserveCapacity(length/2)
        var index = hexString.startIndex
        for _ in 0..<length/2 {
            let nextIndex = hexString.index(index, offsetBy: 2)
            if let hexEncodedValue = UInt8(hexString[index..<nextIndex], radix: 16) {
                bytes.append(hexEncodedValue)
            } else {
                return ""
            }
            index = nextIndex
        }

        let hexBytes = Data(bytes: bytes)

        let base64String = (hexBytes as NSData).base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))

        return base64String
    }
}
