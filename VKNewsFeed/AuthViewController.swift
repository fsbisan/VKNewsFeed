//
//  AuthViewController.swift
//  VKNewsFeed
//
//  Created by Александр Макаров on 02.05.2023.
//

import UIKit

class AuthViewController: UIViewController {
    
    private var authService: AuthService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authService = AuthService.shared
        view.backgroundColor = .red
        
        setupSubviews(vkButton)
        setConstraints()
    }
    
    private lazy var vkButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Войти в VK"
        configuration.baseForegroundColor = .blue
        configuration.baseBackgroundColor = .lightGray
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10 )
        let button = UIButton(configuration: configuration)
        button.addTarget(self, action: #selector(signInTouch), for: .touchUpInside)
        return button
    }()
    
    // MARK: - LayoutMethods
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        vkButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate ([
            vkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vkButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    // MARK: - Private Methods
    
    @objc private func signInTouch() {
        authService.wakeUpSession()
    }
}

