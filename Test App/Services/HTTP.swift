//
//  HTTP.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Alamofire
import Foundation

actor HTTP {
    func requestDecodable<T: Decodable>(_ request: URLRequestConvertible) async throws -> T {
        try await AF.request(request)
            .serializingDecodable(T.self)
            .value
    }
}
