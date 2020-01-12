//
//  ContentBlockerRequestHandler.swift
//  com.albebaubles.AlbeBlocksAnnoyances
//
//  Created by Al Corbett on 1/10/20.
//  Copyright © 2020 Albebaubles LLC. All rights reserved.
//

import Foundation

class ContentBlockerRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequest(with context: NSExtensionContext) {
        let attachment = NSItemProvider(contentsOf:
					Bundle.main.url(forResource: "blockerList", withExtension: "json"))!
        
        let item = NSExtensionItem()
        item.attachments = [attachment]
        
        context.completeRequest(returningItems: [item], completionHandler: nil)
    }
    
}
