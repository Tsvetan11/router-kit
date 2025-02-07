//
//  HomeViewModel.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import Foundation

protocol HomeRouting: AnyObject {
    func didSelect(_ item: FruitViewItem)
}

final class HomeViewModel: BaseViewModel {

    weak var router: HomeRouting?

    let items: [FruitViewItem] = [
        .init(icon: "🍌", title: "Banana"),
        .init(icon: "🍎", title: "Apple"),
        .init(icon: "🫒", title: "Olive"),
        .init(icon: "🍋", title: "Lemon")
    ]

    init(router: HomeRouting? = nil) {
        self.router = router
    }

    func select(_ item: FruitViewItem, multiplyer: Int) {
        for _ in 1...multiplyer {
            router?.didSelect(item)
        }
    }
}
