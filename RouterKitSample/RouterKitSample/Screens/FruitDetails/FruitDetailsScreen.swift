//
//  FruitDetailsScreen.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 30.10.23.
//

import SwiftUI

struct FruitDetailsScreen: View {

    @StateObject private var viewModel: FruitDetailsViewModel

    init(viewModel: FruitDetailsViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(spacing: 20) {
            titleView

            popButton

            popToRootButton
        }
        .navigationTitle(viewModel.item.title)
    }
}

private extension FruitDetailsScreen {

    var titleView: some View {
        Text(viewModel.item.icon)
            .font(.largeTitle)
    }

    var popButton: some View {
        Button("Pop") {
            viewModel.pop()
        }
        .buttonStyle(.bordered)
    }

    var popToRootButton: some View {
        Button("Pop to root") {
            viewModel.popToRoot()
        }
        .buttonStyle(.bordered)
    }
}
