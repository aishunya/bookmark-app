//
//  AddBookmarkView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct AddBookmarkView: View {
    var body: some View {
        ZStack {
            FirstBookmarkView()
            Rectangle()
                .opacity(0.3)
                .ignoresSafeArea()
            VStack {
                Spacer()
                menuView
                    .foregroundColor(.white)
                    .frame(height: 362)
            }
            .ignoresSafeArea()
        }
        
    
    }
    
    var menuView: some View {
        ZStack {
            Color.white
            VStack(spacing: 14.0){
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Image("closeIcon")
                    }
                }
                
                Text("Title")
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .frame(width: 358, alignment: .topLeading)
                CustomTextField(placeholder: "Bookmark title")
        
                Text("Link")
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .frame(width: 358, alignment: .topLeading)
                CustomTextField(placeholder: "Bookmark link (URL)")
                
                CustomButton(buttonColor: .black, buttonTitle: "Save")
                
            }
            .padding()
        }
        .cornerRadius(20)
    }
}

#Preview {
    AddBookmarkView()
}
