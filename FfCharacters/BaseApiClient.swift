//
//  BaseApiClient.swift
//  FfCharacters
//
//  Created by Vitoria Garcia on 16/9/24.
//

import Foundation
class BaseApiClient{
    private var baseURL : URL {
        if let url = URL(string: Environment.shared.baseURL){
            return url
        } else{
            fatalError()
        }
        
    }
    func request(_ relativePath: String) async throws ->(Data,HTTPURLResponse){
        let urlAbsolute = baseURL.appendingPathComponent(relativePath)
        let (data, response) = try await URLSession.shared.data(from: urlAbsolute)
        guard let response = response as? HTTPURLResponse else {
            throw MoogleError.badResponse
        }
        if response.statusCode == 200{
            return (data, response)
        }
        switch response.statusCode {
        case 522:
            throw MoogleError.serviceDown
        case 404:
            throw MoogleError.notFound
        default:
            throw MoogleError.unknown
        }
    }
}
enum MoogleError: Error {
    case badResponse
    case serviceDown
    case notFound
    case unknown
}
