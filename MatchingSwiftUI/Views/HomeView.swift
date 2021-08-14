//
//  ContentView.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/08/14.
//

import SwiftUI

struct HomeView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
        
    var body: some View {
        VStack {
            
            TopControlView()

            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(Color.blue)
            
            BottomControlView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
