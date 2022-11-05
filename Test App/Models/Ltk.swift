//
//  Ltk.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

// MARK: - Ltk
struct Ltk: Codable, Identifiable, Hashable {
    let heroImage: URL?
    let heroImageWidth, heroImageHeight: CGFloat
    let id, profileID, profileUserID: String
    let videoMediaID: String?
    let status: Status
    let caption: String
    let shareURL: URL?
//    let dateCreated, dateUpdated: Date
//    let dateScheduled: JSONNull?
//    let datePublished: Date
    let productIDS: [String]
    let hash: String
    let title: String?

    enum CodingKeys: String, CodingKey {
        case heroImage = "hero_image"
        case heroImageWidth = "hero_image_width"
        case heroImageHeight = "hero_image_height"
        case id
        case profileID = "profile_id"
        case profileUserID = "profile_user_id"
        case videoMediaID = "video_media_id"
        case status, caption
        case shareURL = "share_url"
//        case dateCreated = "date_created"
//        case dateUpdated = "date_updated"
//        case dateScheduled = "date_scheduled"
//        case datePublished = "date_published"
        case productIDS = "product_ids"
        case hash, title
    }
}
