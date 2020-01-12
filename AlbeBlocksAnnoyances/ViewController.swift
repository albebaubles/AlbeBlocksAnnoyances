//
//  ViewController.swift
//  AlbeBlocksAnnoyances
//
//  Created by Al Corbett on 1/9/20.
//  Copyright © 2020 Albebaubles LLC. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {

	@IBOutlet var appNameLabel: NSTextField!

	override func viewDidLoad() {
		super.viewDidLoad()
		self.appNameLabel.stringValue = "Albe Blocks Annoyances\nby Copper Canyon Software\nan AlbeBaubles property"
		self.appNameLabel.maximumNumberOfLines = 3
		self.appNameLabel.sizeToFit()
		self.appNameLabel.alignment = .center
	}

	@IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
		SFSafariApplication.showPreferencesForExtension(withIdentifier: "com.albebaubles.AlbeBlocksAnnoyances")
		{ error in
			if let _ = error {
				// Insert code to inform the user that something went wrong.

			}
		}
	}

}
