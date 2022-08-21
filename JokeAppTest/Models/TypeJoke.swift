//
//  TypeJoke.swift
//  Jokes
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import Foundation

enum JokeType: String, Codable, CaseIterable {
	
	case chucknorris = "Chuck Norris",
	dadjoke = "Dad Joke",
	random = "Random",
	yomama = "Yo Mama"
	
	var type: String {
		switch self {
		case .chucknorris:
			return "chucknorris"
		case .dadjoke:
			return "dadjoke"
		case .random:
			return "random"
		case .yomama:
			return "yomama"
		}
	}
}
