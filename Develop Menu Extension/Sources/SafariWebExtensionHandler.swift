//
//  SafariWebExtensionHandler.swift
//  Develop Menu Extension
//
//  Created by Watanabe Toshinori on 2022/01/08.
//

import SafariServices
import os.log

class SafariWebExtensionHandler: NSObject, NSExtensionRequestHandling {
    func beginRequest(with context: NSExtensionContext) {
        context.completeRequest(returningItems: [], completionHandler: nil)
    }
}
