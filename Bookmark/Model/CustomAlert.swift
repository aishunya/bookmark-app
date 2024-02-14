//
//  CustomAlert.swift
//  BookmarkApp
//
//  Created by Aisha Nurgaliyeva on 13.02.2024.
//

import Foundation

struct CustomAlert: Identifiable {

    enum AlertType {
        case emptyField
        case invalidURL
    }

    let id: AlertType
    let title: String
    let message: String
}
