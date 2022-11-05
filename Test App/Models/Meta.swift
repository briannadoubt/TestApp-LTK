//
//  Meta.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

// MARK: - Meta
struct Meta: Codable {
    let lastID: String
    let numResults, totalResults, limit: Int
    let seed: String
    let nextURL: URL

    enum CodingKeys: String, CodingKey {
        case lastID = "last_id"
        case numResults = "num_results"
        case totalResults = "total_results"
        case limit, seed
        case nextURL = "next_url"
    }
}
