//
//  ContentView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 17.01.2024.
//

import SwiftUI

struct WelcomeScreenView: View {
    
    @State private var goForward: Bool = false
    @Binding var links: [Link]
    @Binding var storedLinksData: Data
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(isActive: $goForward) {
                    BookmarksView(links: $links,
                                  storedLinksData: $storedLinksData)
                } label: {
                    EmptyView()
                }
                
                Color.black
                    .ignoresSafeArea()
                VStack {
                    Image("backgroundImage")
                        .resizable()
                        .frame(width: 450, alignment: .center)
                        .ignoresSafeArea()
                    
                    VStack(spacing: 24) {
                        Text("Save all interesting links in one app")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .frame(width: 358, alignment: .topLeading)
                        CustomButton(buttonColor: .white,           buttonTitle: "Let’s start collecting",
                                     action: {
                            goForward = true
                        })
                    }
                    .safeAreaPadding()
                }
            }
        }
    }
}

