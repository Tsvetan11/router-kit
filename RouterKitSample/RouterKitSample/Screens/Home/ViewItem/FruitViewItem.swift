//
//  FruitViewItem.swift
//  SwiftUINavigation
//
//  Created by Tsvetan Tsvetanov on 30.10.23.
//

import Foundation

struct FruitViewItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
}

extension FruitViewItem: Hashable {

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
