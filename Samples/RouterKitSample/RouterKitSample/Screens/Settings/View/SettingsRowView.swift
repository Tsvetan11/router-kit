//
//  SettingsRowView.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import SwiftUI

struct SettingsRowView: View {

    let item: SettingsViewItem

    var body: some View {
        Label(
            title: {
                Text(item.name)
            },
            icon: {
                Image(systemName: item.icon)
            }
        )
    }
}
