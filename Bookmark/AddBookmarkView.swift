//
//  AddBookmarkView.swift
//  BookmarkApp
//
//  Created by Aisha Nurgaliyeva on 08.02.2024.
//

import SwiftUI

struct AddBookmarkView: View {
    
    @State private var alert: CustomAlert?
    
    @State var enteredTitle: String = ""
    @State var enteredURL: String = ""

    @Binding var isOpened: Bool
    @Binding var links: [Link]
    @Binding var storedLinksData: Data
    
    private func isValidURL(_ urlString: String) -> Bool {
        if let url = URL(string: urlString) {
            return UIApplication.shared.canOpenURL(url)
        }
        return false
    }
    
    private func saveLinks() {
        do {
            let data = try JSONEncoder().encode(links)
            storedLinksData = data
        } catch {
            print("Error encoding items: \(error)")
        }
    }

    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 14.0){
                HStack {
                    Spacer()
                    Button(action: {
                        isOpened = false
                    })
                    {
                        Image("closeIcon")
                    }
                }
                
                Text("Title")
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .frame(width: 358, alignment: .topLeading)
                CustomTextField(placeholder: "Bookmark title", text: $enteredTitle)
        
                Text("Link")
                    .fontWeight(.regular)
                    .foregroundColor(.black)
                    .frame(width: 358, alignment: .topLeading)
                CustomTextField(placeholder: "Bookmark link (URL)", text: $enteredURL)
                Spacer()
                CustomButton(buttonColor: .black,
                             buttonTitle: "Save") {
                    if enteredTitle.isEmpty || enteredURL.isEmpty {
                        alert = CustomAlert(
                                            id: .emptyField,
                                            title: "Cannot add the link",
                                            message: "Please fill both fields")
                    } else if isValidURL(enteredURL) {
                        links.append(Link(title: enteredTitle,
                                          url: enteredURL))
                        saveLinks()
                        isOpened.toggle()
                    } else {
                        alert = CustomAlert(
                                            id: .invalidURL,
                                            title: "Invalid link",
                                            message: "Please correct the URL")
                    }
                }
                     .alert(item: $alert, content: { info in
                                Alert(title: Text(info.title),
                                      message: Text(info.message))
                    })
            }
            .padding()
        }
        .frame(height: 362)
        .cornerRadius(20)
    }
}

