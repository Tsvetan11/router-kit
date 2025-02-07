//
//  AppRouter+SettingsDetailsRouting.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

extension AppRouter: SettingsDetailsRouting {
    
    func presentChange() {
        let viewModel = viewModelFactory.changeSettingsViewModel()
        self.present(.changeSetting(viewModel: viewModel), as: .sheet)
    }
    
    func presentOption() {
        let viewModel = viewModelFactory.changeSettingsViewModel()
        self.present(.changeSetting(viewModel: viewModel), as: .fullScreenCover)
    }
}
