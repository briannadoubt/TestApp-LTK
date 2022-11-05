//
//  Feed.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

struct Feed: Codable {
    let ltks: [Ltk]
    let profiles: [Profile]
    let meta: Meta
    let products: [Product]
    let mediaObjects: [MediaObject]

    enum CodingKeys: String, CodingKey {
        case ltks, profiles, meta, products
        case mediaObjects = "media_objects"
    }
}
