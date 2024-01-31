//
//  LinkView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct LinkView: View {
    
    var linkTitle: String
    var body: some View {
        VStack(spacing: 11.0) {
            HStack(spacing: 8.0) {
                Text(linkTitle)
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                Spacer()
                Button(action: {}) {
                    Image("linkIcon")
                        .foregroundColor(.black)
                }
            }
            Divider()
        }
    }
}

#Preview {
    LinkView(linkTitle: "Sample Text")
}
