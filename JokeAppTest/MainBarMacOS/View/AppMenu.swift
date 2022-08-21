//
//  AppMenu.swift
//  JokeAppTest
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import Foundation
import SwiftUI

class AppMenu: NSObject {
	let menu = NSMenu()
	
	func createMenu() -> NSMenu {
		let mainView = JokeView().configureView()
		
		let topView = NSHostingController(rootView: mainView)
		topView.view.frame.size = CGSize(width: 225, height: 225)
		
		let customMenuItem = NSMenuItem()
		customMenuItem.view = topView.view
		menu.addItem(customMenuItem)
		menu.addItem(NSMenuItem.separator())
		
		let aboutItem = NSMenuItem(title: "My github",
								   action: #selector(about),
								   keyEquivalent: "")
		aboutItem.target = self
		aboutItem.representedObject = "https://github.com/ralin1"
		menu.addItem(aboutItem)
		
		let quit = NSMenuItem(title: "Quit",
								   action: #selector(quit),
								   keyEquivalent: "q")
		quit.target = self
		menu.addItem(quit)
		
		return menu
	}
	
	@objc func about(sender: NSMenuItem) {
		let linkForUrl = sender.representedObject as! String
		guard let url = URL(string: linkForUrl) else {
			return
		}
		NSWorkspace.shared.open(url)
	}
	
	@objc func quit(sender: NSMenuItem) {
		NSApp.terminate(self)
	}
}
