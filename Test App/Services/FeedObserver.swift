//
//  FeedObserver.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Alamofire
import Foundation
import SwiftUI

class FeedObserver: ObservableObject {
    
    @Published var ltks: [Ltk] = []
    @Published var profiles: [Profile] = []
    @Published var meta: Meta?
    @Published var products: [Product] = []
    @Published var mediaObjects: [MediaObject] = []
    
    let service = FeedService()
    
    @MainActor func set(_ feed: Feed) {
        withAnimation {
            ltks.append(contentsOf: feed.ltks)
            let profileDifference = feed.profiles.difference(from: profiles)
            self.profiles = profiles.applying(profileDifference) ?? []
            meta = feed.meta
            products.append(contentsOf: feed.products)
            mediaObjects.append(contentsOf: feed.mediaObjects)
        }
    }
    
    func getFeed(featured: Bool = true, limit: Int = 20) async throws {
        let newFeed = try await service.getFeed(featured: featured, limit: limit)
        await set(newFeed)
    }
    
    func getNextPage() async throws {
        guard let url = meta?.nextURL else {
            throw URLError(.badURL, userInfo: [:])
        }
        let newFeed = try await service.getNextPage(url: url)
        await set(newFeed)
    }
}
