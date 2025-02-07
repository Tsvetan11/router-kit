//
//  AppRouter+FruiteDetailsRouting.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

extension AppRouter: FruitDetailsRouting {
    func didSelectPopButton() {
        self.pop()
    }
    
    func didSelectPopToRootButton() {
        self.popToRoot()
    }
}
