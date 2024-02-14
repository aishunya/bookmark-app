//
//  BookmarkApp.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 17.01.2024.
//

import SwiftUI

@main
struct BookmarkApp: App {
    
    @AppStorage("isFirstAppLaunch") private var isFirstAppLaunch: Bool = true
    @AppStorage("storedLinks") private var storedLinksData: Data = Data()
    @State private var links: [Link] = []
    
    var body: some Scene {
        WindowGroup {
            if isFirstAppLaunch {
                WelcomeScreenView(links: $links, 
                                  storedLinksData: $storedLinksData)
                    .onAppear {
                        loadLinks()
                    }
                    .onDisappear {
                        isFirstAppLaunch = false
                    }
            } else {
                BookmarksView(links: $links, 
                              storedLinksData: $storedLinksData)
                    .onAppear {
                        loadLinks()
                    }
            }
        }
    }
    
    private func loadLinks() {
        if let loadedLinks = try? JSONDecoder().decode([Link].self, from: storedLinksData) {
            links = loadedLinks
        }
    }
}
