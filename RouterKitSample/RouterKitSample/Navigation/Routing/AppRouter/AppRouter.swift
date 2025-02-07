//
//  AppRouter.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import Foundation
import RouterKit

class AppRouter: ObservableObject {
    
    enum Tab {
        case home
        case settings
    }
    
    @Published var selectedTab: Tab = .home {
        willSet {
            if newValue == selectedTab {
                currentTabRouter.popToRoot()
            }
        }
    }
    
    let homeRouter: Router<Route>
    let settingsRouter: Router<Route>
    let viewModelFactory: ViewModelFactory
    
    init(
        selectedTab: Tab,
        homeRouter: Router<Route>,
        settingsRouter: Router<Route>,
        viewModelFactory: ViewModelFactory
    ) {
        self.selectedTab = selectedTab
        self.homeRouter = homeRouter
        self.settingsRouter = settingsRouter
        self.viewModelFactory = viewModelFactory
    }
    
    private var currentTabRouter: Router<Route> {
        switch selectedTab {
        case .home:
            return homeRouter
        case .settings:
            return settingsRouter
        }
    }
    
    var topRouter: Router<Route> {
        var router = currentTabRouter
        
        while let modalRouter = router.sheetRouter ?? router.fullScreenRouter {
            router = modalRouter
        }
        
        return router
    }
    
    func push(_ route: Route) {
        topRouter.push(route)
    }
    
    func pop() {
        topRouter.pop()
    }
    
    func popToRoot() {
        topRouter.popToRoot()
    }
    
    func dismiss() {
        topRouter.parent?.dismiss()
    }
    
    func present(_ route: Route, as presentation: Presentation) {
        topRouter.present(route, as: presentation)
    }
}
