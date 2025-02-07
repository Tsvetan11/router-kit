//
//  BaseViewModel.swift
//  RouterKitSample
//
//  Created by Tsvetan Tsvetanov on 7.02.25.
//

import Foundation

class BaseViewModel: ObservableObject, Hashable, Equatable, Identifiable {
    
    let id = UUID()
    
    init() {}
    
    static func == (lhs: BaseViewModel, rhs: BaseViewModel) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
