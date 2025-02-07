//
//  SettingsViewItem.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import Foundation

struct SettingsViewItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    let icon: String
}

extension SettingsViewItem: Hashable {}
