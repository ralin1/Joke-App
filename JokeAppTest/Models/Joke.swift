//
//  Joke.swift
//  Jokes
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import Foundation

struct Joke: Codable {
	let status: Int
	let response: String
	let joke: String
	let type: String
}
