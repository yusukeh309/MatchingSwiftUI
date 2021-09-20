//
//  LoginView.swift
//  MatchingSwiftUI
//
//  Created by Uske on 2021/09/20.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            
            // hex color E3324F / ED9762
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8901960784, green: 0.1960784314, blue: 0.3098039216, alpha: 1)), Color(#colorLiteral(red: 0.9294117647, green: 0.5921568627, blue: 0.3843137255, alpha: 1))]), startPoint: .center
                           , endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                
                Text("LOGIN")
                    .font(.system(size: 80, weight: .heavy))
                    .foregroundColor(.white)

                TextField("email", text: self.$email)
                    .asSignInTextField()
                
                TextField("password", text: self.$password)
                    .asSignInTextField()
                
                Button(action: {
                    
                }, label: {
                    Text("ログイン")
                        .foregroundColor(.white)
                })
                .frame(width: 200, height: 50)
                // hex color E3324F
                .background(Color(#colorLiteral(red: 0.8901960784, green: 0.1960784314, blue: 0.3098039216, alpha: 1)))
                .cornerRadius(10)
                
                Button(action: {
                    self.presentation.wrappedValue.dismiss()
                }, label: {
                    Text("アカウントをお持ちでない方はコチラ")
                        .font(.system(size: 15))
                })
                
            }
            .padding(.horizontal, 50)
        }
        .navigationBarHidden(true)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
