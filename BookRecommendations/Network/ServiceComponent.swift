//
//  ServiceComponent.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/10/24.
//

import Foundation


protocol ServiceComponent {
    var hostName: String { get }
    var queryComponents: [URLQueryItem] { get }
    var method: SessionManager.Method { get }
    var path: String { get }
}

extension ServiceComponent {
    
    func makeRequest() throws -> URLRequest {
        var request = URLRequest(url: try makeComponent())
        request.httpMethod = method.rawValue
        return request
    }
    
    func makeComponent() throws -> URL {
        var component: URLComponents = .init()
        component.scheme = "https"
        component.queryItems = queryComponents
        component.host = hostName
        component.path = path
        
        guard let url = component.url else { throw SessionError.noURL }
        
        return url
    }
}
