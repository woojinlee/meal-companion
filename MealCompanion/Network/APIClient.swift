//
//  APIClient.swift
//  MealCompanion
//
//  Created by Woojin on 3/20/24.
//

import Foundation
import Combine

protocol APIClient {
    associatedtype EndpointType: APIEndpoint
    func request<T: Decodable>(_ endpoint: EndpointType) -> AnyPublisher<T, Error>
}
