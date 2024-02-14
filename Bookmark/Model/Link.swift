//
//  Link.swift
//  BookmarkApp
//
//  Created by Aisha Nurgaliyeva on 08.02.2024.
//

import Foundation

struct Link: Identifiable, Codable {
    var id = UUID()
    var title: String
    var url: String
}
