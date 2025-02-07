//
//  AppView.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 25.10.23.
//

import SwiftUI
import RouterKit

struct AppView: View {

    @StateObject private var appRouter: AppRouter
    
    init() {
        let viewModelFactory = RoutedViewModelFactory()
        let homeViewModel = HomeViewModel()
        let settingsViewModel = SettingsViewModel()
        
        let homeRouter: Router<Route> = Router(
            initialDestination: Route.home(viewModel: homeViewModel)
        )
        let settingsRouter: Router<Route> = Router(
            initialDestination: Route.settings(viewModel: settingsViewModel)
        )
        
        let appRouter = AppRouter(
            selectedTab: .home,
            homeRouter: homeRouter,
            settingsRouter: settingsRouter,
            viewModelFactory: viewModelFactory
        )
        
        homeViewModel.router = appRouter
        settingsViewModel.router = appRouter
        viewModelFactory.appRouter = appRouter
        
        self._appRouter = StateObject(wrappedValue: appRouter)
    }

    var body: some View {
        TabView(selection: $appRouter.selectedTab) {
            homeTab
            settingsTab
        }
        .environmentObject(appRouter)
    }
}

private extension AppView {

    var homeTab: some View {
        
        RouterView(router: appRouter.homeRouter)
            .tag(AppRouter.Tab.home)
            .tabItem { Label("Home", systemImage: "house") }
    }

    var settingsTab: some View {

        RouterView(router: appRouter.settingsRouter)
            .tag(AppRouter.Tab.settings)
            .tabItem { Label("Settings", systemImage: "gear") }
    }
}
