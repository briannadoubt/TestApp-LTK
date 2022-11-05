//
//  TypeProperties.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

// MARK: - TypeProperties
struct TypeProperties: Codable {
    let mimeType: MIMEType
    let width, height: Int
    let hasAudioChannel: Bool?

    enum CodingKeys: String, CodingKey {
        case mimeType = "mime_type"
        case width, height
        case hasAudioChannel = "has_audio_channel"
    }
}
