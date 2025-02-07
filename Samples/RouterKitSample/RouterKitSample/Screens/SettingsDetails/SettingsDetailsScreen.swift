//
//  SettingsDetailScreen.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import SwiftUI

struct SettingsDetailsScreen: View {
    
    @StateObject private var viewModel: SettingsDetailsViewModel

    init(viewModel: SettingsDetailsViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            Spacer()

            Image(systemName: viewModel.item.icon)
                .font(.largeTitle)

            Text(viewModel.item.name)
                .font(.largeTitle)

            Button("Change") {
                viewModel.change()
            }
            .buttonStyle(.bordered)
            
            Button("Option") {
                viewModel.option()
            }
            .buttonStyle(.bordered)

            Spacer()
        }
    }
}
