//
//  JokePresenterTests.swift
//  JokeAppTestTests
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import XCTest
@testable import JokeAppTest

class JokePresenterTests: XCTestCase {
	private var presenter: JokePresentationLogic!
	
	override func setUp() {
		super.setUp()
		presenter = JokePresenter()
	}
	
	override func tearDown() {
		presenter = nil
		super.tearDown()
	}

    func test_featchtoggle_not_nil() {
		XCTAssertNotNil(presenter.featchTogle)
    }
	
	func test_JokeString_get_not_nil() {
		let textForTest = ""
		XCTAssertNotNil(presenter.getJokeString(textForTest))
	}
}
