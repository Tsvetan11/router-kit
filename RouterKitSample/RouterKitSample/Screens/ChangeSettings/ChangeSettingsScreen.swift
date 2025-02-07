//
//  ChangeSettingsScreen.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 30.10.23.
//

import SwiftUI

struct ChangeSettingsScreen: View {

    @StateObject private var viewModel: ChangeSettingsViewModel

    init(viewModel: ChangeSettingsViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            titleView

            dismissButton
        }
    }
}

private extension ChangeSettingsScreen {

    var titleView: some View {
        Text("🛠️")
            .font(.largeTitle)
    }

    var dismissButton: some View {
        Button("Dismiss") {
            viewModel.dismiss()
        }
        .buttonStyle(.bordered)
    }
}
