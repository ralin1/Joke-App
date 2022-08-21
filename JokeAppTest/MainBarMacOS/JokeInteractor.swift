//
//  JokeInteractor.swift
//  JokeAppTest
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import Foundation

protocol JokeInteractorBuisnessLogic {
	func getApiJoke(type: String) async
}

class JokeInteractor {
	var presenter: JokePresentationLogic?
	
}

extension JokeInteractor: JokeInteractorBuisnessLogic {
	func getApiJoke(type: String) async {
		let url = "https://jokes.guyliangilsing.me/retrieveJokes.php?type=" + type
		
		let apiService = APIService(urlString: url)
		presenter?.featchTogle()
		defer {
			presenter?.featchTogle()
		}
		
		do {
			let joke: Joke = try await apiService.getJSON()
			presenter?.getJokeString(joke.joke)
		} catch  {
			presenter?.getJokeString(error.localizedDescription)
		}
	}
}
