//
//  BookmarksView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct BookmarksView: View {
    
    @State private var isBottomSheetOpen = false
    
    @Binding var links: [Link]
    @Binding var storedLinksData: Data
    
    func openURL(_ link: URL) {
        UIApplication.shared.open(link)
    }
    
    var body: some View {
        NavigationLink() {
        } label: {
            EmptyView()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationTitle(links.isEmpty ? "Bookmark App" : "List")
        
        if links.isEmpty {
            emptyView
        } else {
            listView
        }
    }
    
    var emptyView: some View {
        ZStack {
            Color(red: 0.95, green: 0.95, blue: 0.93)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Save your first \n bookmark")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 358, alignment: .top)
                Spacer()
                CustomButton(buttonColor: .black,
                             buttonTitle: "Add bookmark") {
                    isBottomSheetOpen.toggle()
                }
            }
            .padding()
            .sheet(isPresented: $isBottomSheetOpen) {
                AddBookmarkView(isOpened: $isBottomSheetOpen,
                                links: $links,
                                storedLinksData: $storedLinksData)
                    .presentationDetents([.medium, .large, .fraction(0.8), .height(362)])
            }
        }
    }
    
    var listView: some View {
        VStack(spacing: 39.0) {
            List {
                ForEach(links) { link in
                    LinkRowView(link: link)
                        .onTapGesture {
                            if let url = URL(string: link.url) {
                                openURL(url)
                            }
                        }
                }
            }
            .listStyle(.plain)
            
            Spacer()
            
            CustomButton(buttonColor: .black,
                         buttonTitle: "Add Bookmark") {
                isBottomSheetOpen.toggle()
            }
             .sheet(isPresented: $isBottomSheetOpen) {
                 AddBookmarkView(isOpened: $isBottomSheetOpen,
                                 links: $links,
                                 storedLinksData: $storedLinksData)
                     .presentationDetents([.medium, .large, .fraction(0.8), .height(362)])
             }
            .padding()
        }
    }
}

