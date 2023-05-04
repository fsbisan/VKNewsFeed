//
//  FeedViewController.swift
//  VKNewsFeed
//
//  Created by Александр Макаров on 03.05.2023.
//

import Foundation
import UIKit

final class FeedViewController: UIViewController {
    
    private let networkService = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        networkService.getFeed()
    }
}
