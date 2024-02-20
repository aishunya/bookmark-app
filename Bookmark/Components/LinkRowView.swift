//
//  LinkView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct LinkRowView: View {
    
    var link: Link
    
    var body: some View {
        HStack(spacing: 8.0) {
            Text(link.title)
                .fontWeight(.regular)
                .foregroundColor(.black)
            Spacer()
            Button(action: {}) {
                Image("linkIcon")
                    .foregroundColor(.black)
            }
        }
        .frame(height: 46)
    }
}

#Preview {
    LinkRowView(link: Link(title: "nFactorial", url: "https://www.nfactorial.school/"))
}
