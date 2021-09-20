//
//  VIew-Extension.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/08/14.
//

import SwiftUI

extension View {
    
    func asRoundShadow(size: CGFloat) -> some View {
        modifier(BottomButtonModifier(size: size))
    }
    
    func asSignInTextField() -> some View {
        modifier(SignInTextFieldModifier())
    }
    
}
