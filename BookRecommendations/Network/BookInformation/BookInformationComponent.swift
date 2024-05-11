//
//  BookInformationComponent.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/10/24.
//

import Foundation

final class BookInformationComponent: ServiceComponent {
    private let bookName: String
    var hostName: String = "openlibrary.org"
    var method: SessionManager.Method = .get
    var path: String = "/search.json"
    
    var queryComponents: [URLQueryItem] {
        [
            .init(name: "title", value: bookName),
            .init(name: "lang", value: "en")
        ]
    }
    
    init(bookName: String) {
        self.bookName = bookName
    }
}
