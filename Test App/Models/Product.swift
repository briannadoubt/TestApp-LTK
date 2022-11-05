//
//  Product.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

// MARK: - Product
struct Product: Codable, Identifiable, Hashable {
    let id, ltkID: String
    let hyperlink, imageURL: URL
    let links: Links
    let matching: Matching
    let productDetailsID, retailerID, retailerDisplayName: String

    enum CodingKeys: String, CodingKey {
        case id
        case ltkID = "ltk_id"
        case hyperlink
        case imageURL = "image_url"
        case links, matching
        case productDetailsID = "product_details_id"
        case retailerID = "retailer_id"
        case retailerDisplayName = "retailer_display_name"
    }
}
