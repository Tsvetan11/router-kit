//
//  AppRouter+SettingsRouting.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

extension AppRouter: SettingsRouting {
    
    func didTapSettingsItem(_ item: SettingsViewItem) {
        let viewModel = viewModelFactory.settingsDetailsViewModel(item)
        self.push(.settingsDetails(viewModel: viewModel))
    }
}
