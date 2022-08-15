//
//  ViewController.swift
//  Bluesea Cattery
//
//  Created by Artemiy Zuzin on 15.08.2022.
//

import UIKit
import WebKit

class MainViewController: UIViewController {

    private let webView: WKWebView = {
        let view = WKWebView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
                
        guard let url = URL(string: urlString) else {
            print("❌ Error: url is equal to nil.")
            
            return view
        }
        
        view.load(URLRequest(url: url))
        
        return view
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setupViews()
    }
    
    private func setupViews() {
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.webView)
        
        NSLayoutConstraint.activate([
            self.webView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.webView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            self.webView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.webView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
}

