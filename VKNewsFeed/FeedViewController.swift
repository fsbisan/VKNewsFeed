//
//  FeedViewController.swift
//  VKNewsFeed
//
//  Created by Александр Макаров on 03.05.2023.
//

import Foundation
import UIKit

final class FeedViewController: UIViewController {
    
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        fetcher.getFeed { feedresponse in
            guard let feedresponse = feedresponse else { return }
            feedresponse.items.map { feedItem in
                print(feedItem.date)
            }
        }
    }
}
