//
//  ViewController.swift
//  JaxnodeWeb
//
//  Created by David Fekke on 7/16/16.
//  Copyright © 2016 David Fekke. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    //@IBOutlet weak var myUIWebView: WKWebView!
    private var webView: WKWebView?
    
    override func loadView() {
        webView = WKWebView()
        
        //If you want to implement the delegate
        //webView?.navigationDelegate = self
        
        view = webView
        //view.topAnchor.constraintEqualToAnchor(self.topLayoutGuide.bottomAnchor, constant: 20).active = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://www.jaxnode.com") {
            let req = URLRequest(url: url)
            webView?.load(req)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

