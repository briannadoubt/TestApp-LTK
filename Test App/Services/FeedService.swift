//
//  FeedService.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Alamofire
import Foundation

actor FeedService {
    let http: HTTP
    
    init(http: HTTP = HTTP()) {
        self.http = http
    }
    
    func getFeed(featured: Bool, limit: Int) async throws -> Feed {
        try await http.requestDecodable(Request.getFeed(featured: featured, limit: limit))
    }
    
    func getNextPage(url: URL) async throws -> Feed {
        try await http.requestDecodable(Request.getNextPage(url: url))
    }
    
    enum Error: LocalizedError {
        case invalidUrl
    }
    
    enum Request: URLRequestConvertible {
        case getFeed(featured: Bool, limit: Int)
        case getNextPage(url: URL)
        
        var url: URL? {
            switch self {
            case .getFeed(let featured, let limit):
                return URL(string: "https://api-gateway.rewardstyle.com/api/ltk/v2/ltks/?featured=\(featured)&limit=\(limit)")
            case .getNextPage(let url):
                return url
            }
        }
        
        func asURLRequest() throws -> URLRequest {
            guard let url = url else {
                throw Error.invalidUrl
            }
            return URLRequest(url: url)
        }
    }
}
