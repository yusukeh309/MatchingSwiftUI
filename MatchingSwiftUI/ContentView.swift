//
//  ContentView.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/08/14.
//

import SwiftUI

struct ContentView: View {
    
    enum SelectedItem {
        case tinder, good, comment, profile
    }
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    @State var selectedItem: SelectedItem = .good
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {
                    selectedItem = .tinder
                }, label: {
                    Image(systemName: "flame.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(selectedItem == .tinder ? .red : .gray)
                })
                .frame(width: frameWidth / 4 - 20)
                .padding(.leading, 30)
                
                Button(action: {
                    selectedItem = .good
                }, label: {
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(selectedItem == .good ? .yellow : .gray)
                })
                .frame(width: frameWidth / 4)
                
                Button(action: {
                    selectedItem = .comment
                }, label: {
                    Image(systemName: "bubble.left.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(selectedItem == .comment ? .orange : .gray)
                })
                .frame(width: frameWidth / 4)
                
                Button(action: {
                    selectedItem = .profile
                }, label: {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(selectedItem == .profile ? .pink : .gray)
                })
                .frame(width: frameWidth / 4 - 20)
                .padding(.trailing, 30)

            }
            .padding()
            .frame(width: frameWidth)

            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(Color.blue)
            
            HStack(spacing: 20) {
                
                BottomButtonView(imageName: "reload", imageSize: 20, backgroundSize: 50)
                
                BottomButtonView(imageName: "nope", imageSize: 25, backgroundSize: 60)
                
                BottomButtonView(imageName: "superlike", imageSize: 20, backgroundSize: 50)
                
                BottomButtonView(imageName: "like", imageSize: 25, backgroundSize: 60)
                
                BottomButtonView(imageName: "boost", imageSize: 20, backgroundSize: 50)
                
            }
            .padding()
            .frame(width: frameWidth)
        }
    }
}

struct BottomButtonView: View {
    
    var imageName: String
    var imageSize: CGFloat
    var backgroundSize: CGFloat
    
    var body: some View {
        
        ZStack {
            Color.white
                .frame(width: backgroundSize, height: backgroundSize)
                .cornerRadius(backgroundSize)
                .shadow(radius: 10)
            
            Button(action: {
                
                
            }, label: {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageSize, height: imageSize, alignment: .center)
            })
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
