//
//  SettingsViewModel.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import Foundation

protocol SettingsRouting: AnyObject {
    func didTapSettingsItem(_ item: SettingsViewItem)
}

final class SettingsViewModel: BaseViewModel {

    weak var router: SettingsRouting?

    let settingsItems: [SettingsViewItem] = [
        .init(name: "Airplane Mode", icon: "airplane"),
        .init(name: "Wi-Fi", icon: "wifi"),
        .init(name: "Bluetooth", icon: "bold"),
        .init(name: "Mobile Service", icon: "antenna.radiowaves.left.and.right"),
        .init(name: "Personal Hotspot", icon: "personalhotspot")
    ]

    init(router: SettingsRouting? = nil) {
        self.router = router
    }
    
    func didTapSettingsItem(_ item: SettingsViewItem) {
        router?.didTapSettingsItem(item)
    }
}
