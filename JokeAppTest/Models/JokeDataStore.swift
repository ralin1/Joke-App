//
//  JokeDataStore.swift
//  JokeAppTest
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import Foundation

class JokeDataStore: ObservableObject {
	@Published var jokeString: String = "No Jokes"
	@Published var fetching: Bool = false
}
