//
//  FeedResponse.swift
//  VKNewsFeed
//
//  Created by Александр Макаров on 06.05.2023.
//

import Foundation

struct FeedResponceWrapped: Decodable {
    let response: FeedResponse
}

struct FeedResponse: Decodable {
    var items: [FeedItem]
}

struct FeedItem: Decodable {
    let sourceId: Int
    let postId: Int
    var text: String?
    let date: Double
    var comments: CountableItem?
    var likes: CountableItem?
    var reposts: CountableItem?
    var views: CountableItem?
}


struct CountableItem: Decodable {
    let count: Int
}
