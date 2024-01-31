//
//  CustomButton.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct CustomButton: View {
    
    var buttonColor: ButtonColor
    var buttonTitle: String
    
    enum ButtonColor: Equatable {
        case black
        case white
    }
    
    var body: some View {
//        Color.black
//            .ignoresSafeArea()
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16.0)
                    .fill(buttonColor == .white ? .white : .black)
                
                Text(buttonTitle)
                    .foregroundColor(buttonColor == .white ? .black : .white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
            }
        }
        .frame(height: 58.0)
    }
}

#Preview {
    CustomButton(buttonColor: .black, buttonTitle: "Sample Text")
}
