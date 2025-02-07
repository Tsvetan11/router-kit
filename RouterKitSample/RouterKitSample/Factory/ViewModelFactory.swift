//
//  ViewModelFactory.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

protocol ViewModelFactory {
    func changeSettingsViewModel() -> ChangeSettingsViewModel
    func settingsDetailsViewModel(_ item: SettingsViewItem) -> SettingsDetailsViewModel
    func fruitDetailsViewModel(_ item: FruitViewItem) -> FruitDetailsViewModel
}

final class RoutedViewModelFactory: ViewModelFactory {
    
    var appRouter: AppRouter?
    
    func changeSettingsViewModel() -> ChangeSettingsViewModel {
        let viewModel = ChangeSettingsViewModel()
        viewModel.router = appRouter
        return viewModel
    }
    
    func settingsDetailsViewModel(_ item: SettingsViewItem) -> SettingsDetailsViewModel {
        let viewModel = SettingsDetailsViewModel(item: item)
        viewModel.router = appRouter
        return viewModel
    }
    
    func fruitDetailsViewModel(_ item: FruitViewItem) -> FruitDetailsViewModel {
        let viewModel = FruitDetailsViewModel(item: item)
        viewModel.router = appRouter
        return viewModel
    }
}
