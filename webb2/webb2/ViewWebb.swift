//
//  ViewController.swift
//  webb2
//
//  Created by Harsh Tiwari on 24/05/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    var toolbar: UIToolbar!
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguration)
//        webView.navigationDelegate = self
//        //webView.uiDelegate = self
//        view = webView
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
//        toolbar = UIToolbar(frame: CGRect(x: 0, y: view.frame.size.height - 44, width: view.frame.size.width, height: 44))
//        view.addSubview(toolbar)
//
//
//        let backButton = UIBarButtonItem(image: UIImage(named: "BackIcon"), style: .plain, target: self, action: #selector(goBack))
//        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//
//
//        let forwardButton = UIBarButtonItem(image: UIImage(named: "ForwardIcon"), style: .plain, target: self, action: #selector(goForward))
//
//        toolbar.items = [backButton, flexibleSpace, forwardButton]
        
//        webView.navigationDelegate = self
        
        let theUrl = URL(string: "https://www.google.com")
        
        let req = URLRequest(url: theUrl!)
        webView.load(req)
    }
    
    @IBAction func goBack() {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBAction func goForward() {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
    @IBAction func reload() {
        webView.reload()
    }
    

}

