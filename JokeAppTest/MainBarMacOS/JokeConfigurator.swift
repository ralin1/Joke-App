//
//  JokeConfigurator.swift
//  JokeAppTest
//
//  Created by Oleksandr Filippov (work) on 21/08/2022.
//

import SwiftUI

extension JokeView {
	func configureView() -> some View {
		var view = self
		let interactor = JokeInteractor()
		let presenter = JokePresenter()
		view.interactor = interactor
		interactor.presenter = presenter
		presenter.view = view

		return view
	}
}
