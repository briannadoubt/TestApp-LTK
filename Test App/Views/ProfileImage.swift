//
//  ProfileImage.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import SwiftUI

struct ProfileImage: View {
    let url: URL
    let size: CGFloat
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .frame(width: size, height: size)
                .aspectRatio(1, contentMode: .fill)
                .cornerRadius(size / 2)
        } placeholder: {
            ProgressView()
        }
    }
}

struct ProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImage(url: URL(string: "https://product-images-cdn.liketoknow.it/Qb7Cf1bRSMEymE5LwL9j0t0AGnPbNm.6T2eaJHSQYLAxWqkrjjPWJHlfzWLklmFcqBdFLHDRv6CmHZvYoB_wmqklnsGgidmungmUNLtvUa5aHeuavM3EciPtpMuSzU65BPW02naSrtwNmxPZ51gUR0uy5OeYfAgrJxVtM3nKnX6nz0gX9ftjnDI0hos-")!, size: 150)
    }
}
