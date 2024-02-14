//
//  CustomTextField.swift
//  Bookmark
//
//  Created by Aisha Nurgaliyeva on 18.01.2024.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12.0)
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.93))
                .frame(height: 46.0, alignment: .topLeading)
            
            TextField(placeholder, text: $text)
                .textFieldStyle(.plain)
                .fontWeight(.regular)
                .border(.clear)
                .padding()
                .foregroundColor(.black)
                .disableAutocorrection(true)
                .textCase(nil)

        }
    }
}
