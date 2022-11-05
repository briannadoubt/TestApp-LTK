//
//  URL+Identifiable.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

extension URL: Identifiable {
    public var id: String {
        absoluteString
    }
}
