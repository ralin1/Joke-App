//
//  JokePresenter.swift
//  JokeAppTest
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import Foundation

protocol JokePresentationLogic {
	func featchTogle()
	func getJokeString(_ text: String)
}

class JokePresenter {
	var view: JokeViewDisplayLogic?
}

extension JokePresenter: JokePresentationLogic {
	func getJokeString(_ text: String) {
		view?.getJoke(text)
	}
	
	func featchTogle() {
		view?.featchTogle()
	}
}
