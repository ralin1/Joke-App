//
//  ApiServiceTests.swift
//  JokeAppTestTests
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import XCTest
@testable import JokeAppTest

class ApiServiceTests: XCTestCase {

	private var api: APIService!
	
	override func setUp() {
		super.setUp()
		api = APIService(urlString: "")
	}
	
	override func tearDown() {
		api = nil
		super.tearDown()
	}

    func test_string_not_nil() {
		XCTAssertNotNil(api.urlString)
    }
	
	func test_Api_get_string() async {
		var testString: String? = nil
		
		do {
			let joke: Joke = try await api.getJSON()
			testString = joke.joke
		} catch  {
			testString = error.localizedDescription
		}
		
		XCTAssertNotNil(testString)
	}
	
	func test_Api_check_error_with_url() async {
		do {
			let _: Joke = try await api.getJSON()
		} catch  {
			XCTAssertEqual(APIError.invalidURL.localizedDescription, error.localizedDescription)
		}
	}
}
