//
//  Utils.swift
//  TestClient
//

import UIKit
import jetpaySDK

class Utils: NSObject {
    @objc(signature:secret:)
    class func signature(paramsToSign: String, secret: String) -> String {
        return paramsToSign.sha512(secret: secret)!.base64EncodedString()
    }
}
