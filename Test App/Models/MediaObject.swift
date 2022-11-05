//
//  MediaObject.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

// MARK: - MediaObject
struct MediaObject: Codable {
    let id: String
    let type: TypeEnum
    let state: MediaState
    let createdAt, updatedAt: String
    let mediaCDNURL: String
    let brandedMediaCDNURL, passthroughMediaCDNURL: String?
    let typeProperties: TypeProperties
    let thumbnailIDS: [String]?

    enum CodingKeys: String, CodingKey {
        case id, type, state
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case mediaCDNURL = "media_cdn_url"
        case brandedMediaCDNURL = "branded_media_cdn_url"
        case passthroughMediaCDNURL = "passthrough_media_cdn_url"
        case typeProperties = "type_properties"
        case thumbnailIDS = "thumbnail_ids"
    }
}
