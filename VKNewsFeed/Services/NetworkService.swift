//
//  NetworkService.swift
//  VKNewsFeed
//
//  Created by Александр Макаров on 04.05.2023.
//

import Foundation

final class NetworkService {
    
    private let authService = AuthService.shared
     
    func getFeed() {
        var components = URLComponents()
        
        guard let token = authService.token else { return }
        let params = ["filters": "post, photo"]
        var allParams = params
        allParams["access_token"] = token
        allParams["v"] = API.version
        
        components.scheme = API.scheme
        components.host = API.host
        components.path = API.newFeed
        components.queryItems = allParams.map { URLQueryItem(name: $0, value: $1) }
        
        let url = components.url!
        print(url)
    }
}

// https://api.vk.com/method/users.get?user_ids=743784474&fields=bdate&access_token=533bacf01e11f55b536a565b57531ac114461ae8736d6506a3&v=5.131
