//
//  Links.swift
//  Test App
//
//  Created by Bri on 11/3/22.
//

import Foundation

// MARK: - Links
struct Links: Codable, Hashable {
    let androidConsumerApp, androidConsumerAppSs, iosConsumerApp, iosConsumerAppSs: String
    let ltkEmail, ltkWeb, ltkWidget, tailoredEmail: String

    enum CodingKeys: String, CodingKey {
        case androidConsumerApp = "ANDROID_CONSUMER_APP"
        case androidConsumerAppSs = "ANDROID_CONSUMER_APP_SS"
        case iosConsumerApp = "IOS_CONSUMER_APP"
        case iosConsumerAppSs = "IOS_CONSUMER_APP_SS"
        case ltkEmail = "LTK_EMAIL"
        case ltkWeb = "LTK_WEB"
        case ltkWidget = "LTK_WIDGET"
        case tailoredEmail = "TAILORED_EMAIL"
    }
}
