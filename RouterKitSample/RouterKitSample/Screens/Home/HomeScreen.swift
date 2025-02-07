//
//  HomeScreen.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import SwiftUI

struct HomeScreen: View {

    @StateObject private var viewModel: HomeViewModel

    init(viewModel: HomeViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        List {
            listSection(with: "x1", multiplyer: 1)
            listSection(with: "x2", multiplyer: 2)
            listSection(with: "x3", multiplyer: 3)
        }
        .navigationTitle("RouterKit Sample 🚏")
    }
}

private extension HomeScreen {

    @ViewBuilder
    func listSection(with title: String, multiplyer: Int) -> some View {
        Section(content: {
            ForEach(viewModel.items) { item in
                FruitRowView(item: item)
                    .onTapGesture {
                        viewModel.select(item, multiplyer: multiplyer)
                    }
            }
        }, header: {
            Text(title)
        }, footer: {
            Text("Selected item will be pushed \(multiplyer) time/s in the navigation stack.")
        })
    }
}
