//
//  AppRouter+HomeRouting.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

extension AppRouter: HomeRouting {
    func didSelect(_ item: FruitViewItem) {
        let viewModel = viewModelFactory.fruitDetailsViewModel(item)
        self.push(.fruitDetails(viewModel: viewModel))
    }
}
