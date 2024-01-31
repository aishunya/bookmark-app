//
//  ListView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack(spacing: 39.0) {
            Text("List")
                .fontWeight(.semibold)
            LinkView(linkTitle: "Google")
            LinkView(linkTitle: "nFactorial School")
            LinkView(linkTitle: "NY Times")
            LinkView(linkTitle: "Bloomberg")
            Spacer()
            CustomButton(buttonColor: .black, 
                         buttonTitle: "Add Bookmark")
        }
        .padding()
    }
}

#Preview {
    ListView()
}
