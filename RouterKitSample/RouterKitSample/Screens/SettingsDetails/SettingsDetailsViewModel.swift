//
//  SettingsDetailsViewModel.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import Foundation

protocol SettingsDetailsRouting: AnyObject {
    func presentChange()
    func presentOption()
}

final class SettingsDetailsViewModel: BaseViewModel {

    let item: SettingsViewItem

    weak var router: SettingsDetailsRouting?

    init(
        item: SettingsViewItem,
        router: SettingsDetailsRouting? = nil
    ) {
        self.item = item
        self.router = router
    }

    func change() {
        router?.presentChange()
    }
    
    func option() {
        router?.presentOption()
    }
}
