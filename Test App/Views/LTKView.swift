//
//  LTKView.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import SwiftUI

struct LTKView: View {
    var ltk: Ltk
    var profile: Profile
    var products: [Product]
    @State var selectedHyperlink: URL?
    var body: some View {
        List {
            // Hero image
            FullWidthAsyncImage(url: ltk.heroImage)
            Text(ltk.caption)
            // Product images
            if !products.isEmpty {
                Section {
                    LazyVGrid(columns: [.init(.flexible()), .init(.flexible()), .init(.flexible())]) {
                        ForEach(products) { product in
                            FullWidthAsyncImage(url: product.imageURL)
                                .onTapGesture {
                                    selectedHyperlink = product.hyperlink
                                }
                        }
                    }
                } header: {
                    Text("Images")
                }
            }
            // Profile picture
            Section {
                HStack {
                    Spacer()
                    ProfileImage(url: profile.avatarURL, size: 150)
                    Spacer()
                }
            } header: {
                Text("Sold by")
            }
        }
        .navigationTitle(ltk.title ?? "Post")
        .sheet(item: $selectedHyperlink) { hyperlink in
            WebView(url: hyperlink)
                .onDisappear {
                    selectedHyperlink = nil
                }
        }
    }
}


struct LTKView_Previews: PreviewProvider {
    static var previews: some View {
        LTKView(ltk: Ltk(heroImage: nil, heroImageWidth: 1, heroImageHeight: 1, id: "", profileID: "", profileUserID: "", videoMediaID: nil, status: .published, caption: "", shareURL: nil, productIDS: [], hash: "", title: nil), profile: Profile(id: "", avatarURL: URL(string: "")!, avatarUploadURL: nil, displayName: "", fullName: "", instagramName: "", blogName: "", blogURL: "", bgImageURL: nil, bgUploadURL: nil, bio: "", rsAccountID: 0, searchable: true), products: [], selectedHyperlink: nil)
    }
}
