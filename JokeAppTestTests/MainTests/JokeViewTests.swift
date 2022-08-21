//
//  JokeViewTests.swift
//  JokeAppTestTests
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import XCTest
@testable import JokeAppTest

class JokeViewTests: XCTestCase {

	private var view: JokeViewDisplayLogic!
	
	override func setUp() {
		super.setUp()
		view = JokeView()
	}
	
	override func tearDown() {
		view = nil
		super.tearDown()
	}

    func test_featchTogle() {
		XCTAssertNotNil(view.featchTogle)
    }
	
	func test_getJoke_not_nil() {
		XCTAssertNotNil(view.getJoke(""))
	}

}
