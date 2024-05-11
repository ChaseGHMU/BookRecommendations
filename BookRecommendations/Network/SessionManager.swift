//
//  SessionManager.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/10/24.
//

import Foundation

enum SessionError: Error {
    case noURL
}

final class SessionManager {
    enum Method: String {
        case post = "POST"
        case put = "PUT"
        case get = "GET"
        case patch = "PATCH"
    }
    
    private static var session: URLSession = .shared
    private static var decoder: JSONDecoder = .init()
    
    static func request<T: Codable, C: ServiceComponent>(component: C, httpMethod: Method) async throws -> T {
        let request = try component.makeRequest()
        
        let (data, _) = try await session.data(for: request)
        
        return try decoder.decode(T.self, from: data)
    }
}
