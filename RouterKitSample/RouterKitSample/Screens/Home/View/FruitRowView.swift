//
//  FruitRowView.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 30.10.23.
//

import SwiftUI

struct FruitRowView: View {

    let item: FruitViewItem

    var body: some View {
        HStack {
            Text(item.icon)
            Text(item.title)
        }
    }
}
