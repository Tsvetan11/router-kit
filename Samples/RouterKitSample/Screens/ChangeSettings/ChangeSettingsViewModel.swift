//
//  ChangeSettingsViewModel.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 30.10.23.
//

import Foundation

protocol ChangeSettingsRouting: AnyObject {
    func dismissSettings()
}

final class ChangeSettingsViewModel: BaseViewModel {

    weak var router: ChangeSettingsRouting?

    init(router: ChangeSettingsRouting? = nil) {
        self.router = router
    }
    
    func dismiss() {
        router?.dismissSettings()
    }
}
