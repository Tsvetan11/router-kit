//
//  FruitDetailsViewModel.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 30.10.23.
//

import Foundation

protocol FruitDetailsRouting: AnyObject {
    func didSelectPopButton()
    func didSelectPopToRootButton()
}

final class FruitDetailsViewModel: BaseViewModel {
    
    let item: FruitViewItem

    weak var router: FruitDetailsRouting?

    init(item: FruitViewItem, router: FruitDetailsRouting? = nil) {
        self.item = item
        self.router = router
    }

    func pop() {
        router?.didSelectPopButton()
    }

    func popToRoot() {
        router?.didSelectPopToRootButton()
    }
}
