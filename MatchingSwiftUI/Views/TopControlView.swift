//
//  TopControlView.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/08/14.
//

import SwiftUI

struct TopControlView: View {
    
    enum SelectedItem {
        case tinder, good, comment, profile
    }
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    @State var selectedItem: SelectedItem = .good
    
    var body: some View {
        HStack {
            Button(action: {
                selectedItem = .tinder
            }, label: {
                Image(systemName: "flame.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .tinder ? .red : .gray)
            })
            .frame(width: frameWidth / 4 - 20)
            .padding(.leading, 30)
            
            Button(action: {
                selectedItem = .good
            }, label: {
                Image(systemName: "suit.diamond.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .good ? .yellow : .gray)
            })
            .frame(width: frameWidth / 4)
            
            Button(action: {
                selectedItem = .comment
            }, label: {
                Image(systemName: "bubble.left.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .comment ? .orange : .gray)
            })
            .frame(width: frameWidth / 4)
            
            Button(action: {
                selectedItem = .profile
            }, label: {
                Image(systemName: "person.crop.circle.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .profile ? .pink : .gray)
            })
            .frame(width: frameWidth / 4 - 20)
            .padding(.trailing, 30)

        }
        .padding()
        .frame(width: frameWidth)
    }
}
