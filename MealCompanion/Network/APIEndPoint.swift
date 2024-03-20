//
//  APIEndPoint.swift
//  MealCompanion
//
//  Created by Woojin on 3/20/24.
//

import Foundation

protocol APIEndpoint {
    typealias Headers = [String: String]
    typealias Parameters = [String: Any]
    
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: Headers? { get }
    var parameters: Parameters? { get }
}

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

enum APIError: Error {
    case invalidResponse
    case invalidData
    case unknown
}

