//
//  FullWidthAsyncImage.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import SwiftUI

struct FullWidthAsyncImage: View {
    var url: URL?
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
}

struct FullWidthAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        FullWidthAsyncImage(url: URL(string: "")!)
    }
}
