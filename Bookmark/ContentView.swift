//
//  ContentView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 17.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image("backgroundImage")
                    .resizable()
                    .frame(width: 390, alignment: .center)
                    .ignoresSafeArea()
                
                VStack(spacing: 24) {
                    Text("Save all interesting links in one app")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .frame(width: 358, alignment: .topLeading)
                    CustomButton(buttonColor: .white,       buttonTitle: "Let’s start collecting")
                }
                .safeAreaPadding()
            }
        }
    }
}

#Preview {
    ContentView()
}
