//
//  Profile.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

// MARK: - Profile
struct Profile: Codable, Equatable {
    let id: String
    let avatarURL: URL
    let avatarUploadURL: URL?
    let displayName, fullName, instagramName: String
    let blogName: String
    let blogURL: String
    let bgImageURL: URL?
    let bgUploadURL: URL?
    let bio: String
    let rsAccountID: Int
    let searchable: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case avatarURL = "avatar_url"
        case avatarUploadURL = "avatar_upload_url"
        case displayName = "display_name"
        case fullName = "full_name"
        case instagramName = "instagram_name"
        case blogName = "blog_name"
        case blogURL = "blog_url"
        case bgImageURL = "bg_image_url"
        case bgUploadURL = "bg_upload_url"
        case bio
        case rsAccountID = "rs_account_id"
        case searchable
    }
}
