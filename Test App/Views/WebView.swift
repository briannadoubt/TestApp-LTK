//
//  WebView.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import SafariServices
import SwiftUI

struct WebView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: URL(string: "")!)
    }
}
