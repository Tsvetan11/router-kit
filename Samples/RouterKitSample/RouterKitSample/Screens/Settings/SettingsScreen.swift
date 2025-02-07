//
//  SettingsScreen.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import SwiftUI

struct SettingsScreen: View {

    @StateObject private var viewModel: SettingsViewModel

    init(viewModel: SettingsViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        List {
            ForEach(viewModel.settingsItems) { item in
                
                SettingsRowView(item: item)
                    .onTapGesture {
                        viewModel.didTapSettingsItem(item)
                    }
            }
        }
        .navigationTitle("Settings")
    }
}
