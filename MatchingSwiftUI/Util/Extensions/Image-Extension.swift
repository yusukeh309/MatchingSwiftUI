//
//  Image-Extension.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/08/14.
//

import SwiftUI

extension Image {
    
    func asTopControlButtonImage() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30, alignment: .center)
    }
}
