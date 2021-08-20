//
//  CardViewModel.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/08/20.
//

import SwiftUI

class CardViewModel: ObservableObject {
    
    @Published var transation: CGSize = .zero
    @Published var numbers = [0, 1, 2, 3, 4, 5]
    @Published var goodOpacity: Double = 0
    @Published var nopeOpacity: Double = 0
    
    init() {
        
    }
    
}
