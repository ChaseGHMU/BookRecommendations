//
//  BookInformationNetworkService.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/8/24.
//

import Foundation

protocol BookInformationNetworkProvider {
    static func getBookInformation(forBookNamed bookName: String) async
}

final class BookInformationNetworkService: BookInformationNetworkProvider {
    static func getBookInformation(forBookNamed bookName: String) async {
        var components: BookInformationComponent = .init(bookName: bookName)
        
        do {
            let response: Response = try await SessionManager.request(component: components, httpMethod: .get)
            print(response)
        } catch {
            print(error)
        }
    }
}
