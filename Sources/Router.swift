//
//  Router.swift
//  RouterKit
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

import SwiftUI
import Observation

@Observable
public final class Router<T: Destination>: Identifiable {

    public let initialDestination: T

    @ObservationIgnored public weak var parent: Router?

    public var path: [T] = []
    public var sheetRouter: Router?
    public var fullScreenRouter: Router?

    public init(initialDestination: T) {
        self.initialDestination = initialDestination
    }

    public func push(_ destination: T) {
        path.append(destination)
    }

    public func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    public func popToRoot() {
        path.removeAll()
    }

    public func present(_ destination: T, as presentation: Presentation) {
        let router = Router(initialDestination: destination)
        router.parent = self

        switch presentation {
        case .sheet:
            sheetRouter = router
        case .fullScreenCover:
            fullScreenRouter = router
        }
    }

    public func dismiss() {
        if sheetRouter != nil {
            sheetRouter = nil
        } else if fullScreenRouter != nil {
            fullScreenRouter = nil
        }
    }
}

extension Router: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}

extension Router: Equatable {
    public static func == (lhs: Router<T>, rhs: Router<T>) -> Bool {
        lhs.id == rhs.id
    }
}
