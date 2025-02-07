//
//  RouterView.swift
//  RouterKit
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

import SwiftUI

public struct RouterView<T: Destination>: View {

    @ObservedObject public var router: Router<T>
    
    public init(router: Router<T>) {
        self.router = router
    }

    public var body: some View {
        NavigationStack(path: $router.path) {
            router.initialDestination
                .navigationDestination(for: T.self) { $0 }
        }
        .sheet(item: $router.sheetRouter) { router in
            RouterView(router: router)
        }
        .fullScreenCover(item: $router.fullScreenRouter) { router in
            RouterView(router: router)
        }
    }
}
