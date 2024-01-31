//
//  FirstBookmarkView.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct FirstBookmarkView: View {
    var body: some View {
        ZStack {
            Color(red: 0.95, green: 0.95, blue: 0.93)
                .ignoresSafeArea()
            VStack {
                Text("Bookmark App")
                    .fontWeight(.semibold)
                Spacer()
                Text("Save your first \n bookmark")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 358, alignment: .top)
                Spacer()
                CustomButton(buttonColor: .black,
                             buttonTitle: "Add bookmark")
            }
            .padding()
        }
    }
}

#Preview {
    FirstBookmarkView()
}
