//
//  FeedView.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var feed = FeedObserver()
    
    var body: some View {
        NavigationStack {
            List {
                if feed.ltks.isEmpty {
                    // TODO: Use the height from the API to calculate a height for this and build a loading animation that is less disruptive.
                    ProgressView()
                        .task {
                            do {
                                try await feed.getFeed()
                            } catch {
                                print("Failed to get feed:", error)
                            }
                        }
                }
                ForEach(feed.ltks) { ltk in
                    NavigationLink(value: ltk) {
                        VStack {
                            if let profile = feed.profiles.first(where: { $0.id == ltk.profileID }) {
                                HStack {
                                    ProfileImage(url: profile.avatarURL, size: 44)
                                    Text(profile.displayName).bold()
                                    Spacer()
                                }
                            }
                            FullWidthAsyncImage(url: ltk.heroImage)
                            HStack {
                                Text(ltk.caption)
                                Spacer()
                            }
                        }
                        .task {
                            if let index = feed.ltks.firstIndex(of: ltk), index == feed.ltks.count - 1 {
                                do {
                                    try await feed.getNextPage()
                                } catch {
                                    print("Failed to update feed:", error)
                                }
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("LikeToKnow.it")
            .navigationDestination(for: Ltk.self) { ltk in
                if let profile = feed.profiles.first(where: { $0.id == ltk.profileID }) {
                    LTKView(ltk: ltk, profile: profile, products: feed.products.filter({ $0.ltkID == ltk.id }))
                } else {
                    Text("Invalid profile!")
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
