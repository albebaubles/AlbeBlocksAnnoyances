//
//  ViewController.swift
//  AlbeBlocksAnnoyancesIos
//
//  Created by Al Corbett on 1/28/20.
//  Copyright © 2020 Albebaubles LLC. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
	@IBOutlet weak var appNameLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		self.appNameLabel.text = "Albe Blocks Annoyances\nby Copper Canyon Software\nan AlbeBaubles property"
		self.appNameLabel.numberOfLines = 3
		self.appNameLabel.sizeToFit()
	}

	@IBAction func openSafariExtensionPreferences(_ sender: Any) {
		if UIApplication.shared.canOpenURL(URL(string: UIApplication.openSettingsURLString)!) {
			UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
		}
	}
}

