//
//  BottomButtonModifier.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/08/14.
//

import SwiftUI

struct BottomButtonModifier: ViewModifier {
    
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
            .cornerRadius(size)
            .shadow(radius: 10)
    }
    
}
