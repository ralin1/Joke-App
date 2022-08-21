//
//  JokeAppTestApp.swift
//  JokeAppTest
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import SwiftUI

@main
struct JokeAppTestApp: App {
	@NSApplicationDelegateAdaptor(AppDelegate.self) var addDelegate
    var body: some Scene {
		Settings {
			EmptyView()
		}
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
	static private(set) var instance: AppDelegate!
	
	lazy var statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
	let menu = AppMenu()
	
	func applicationDidFinishLaunching(_ notification: Notification) {
		AppDelegate.instance = self
		
		statusBarItem.button?.image = NSImage(named: NSImage.Name("info"))
		
		statusBarItem.button?.imagePosition = .imageLeading
		statusBarItem.menu = menu.createMenu()
	}
}
