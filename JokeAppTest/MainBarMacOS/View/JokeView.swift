//
//  JokeView.swift
//  JokeAppTest
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import SwiftUI

protocol JokeViewDisplayLogic {
	func featchTogle()
	func getJoke(_ text: String)
}

extension JokeView: JokeViewDisplayLogic {
	func getJoke(_ text: String) {
		jokeDataStore.jokeString = text
	}
	
	func featchTogle() {
		jokeDataStore.fetching.toggle()
	}

}

struct JokeView: View {
	var interactor: JokeInteractorBuisnessLogic?

	@State private var jokeDataStore = JokeDataStore()
	@AppStorage("jokeType") var jokeType: JokeType = .random
	
	var body: some View {
		VStack {
			VStack {
				ForEach(JokeType.allCases, id: \.self) { item in
					Button {
						jokeType = item
						Task {
							await interactor?.getApiJoke(type: jokeType.type)
						}
						
					} label: {
						Text(item.rawValue)
							.foregroundColor(item == jokeType ? .red : Color.primary)
					}
				}
			}
			.frame(height: 130)
			
			if 	jokeDataStore.fetching {
				ProgressView()
			} else {
				Text(jokeDataStore.jokeString)
					.minimumScaleFactor(0.5)
			}
			Spacer()
		}
		.padding()
		.task {
			await interactor?.getApiJoke(type: jokeType.type)
		}
	}
	
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		JokeView()
			.frame(width: 225, height: 225)
	}
}
