//
//  Route.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import SwiftUI
import RouterKit

enum Route: Destination {
    case home(viewModel: HomeViewModel)
    case fruitDetails(viewModel: FruitDetailsViewModel)
    case settings(viewModel: SettingsViewModel)
    case settingsDetails(viewModel: SettingsDetailsViewModel)
    case changeSetting(viewModel: ChangeSettingsViewModel)
}

extension Route: View {
    
    var body: some View {
        switch self {
        case .home(let viewModel):
            HomeScreen(viewModel: viewModel)
        case .settings(let viewModel):
            SettingsScreen(viewModel: viewModel)
        case .settingsDetails(let viewModel):
            SettingsDetailsScreen(viewModel: viewModel)
        case .changeSetting(let viewModel):
            ChangeSettingsScreen(viewModel: viewModel)
        case .fruitDetails(let viewModel):
            FruitDetailsScreen(viewModel: viewModel)
        }
    }
}
