//
//  AppDelegate.swift
//  AlbeBlocksAnnoyances
//
//  Created by Al Corbett on 1/9/20.
//  Copyright © 2020 Albebaubles LLC. All rights reserved.
//

import Cocoa
import SafariServices

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		SFContentBlockerManager.reloadContentBlocker(withIdentifier: "com.albebaubles.AlbeBlocksAnnoyances") { (result) -> Void in
			print(result as Any)
		}
	}

		func applicationWillTerminate(_ aNotification: Notification) {
			// Insert code here to tear down your application
		}

	}
