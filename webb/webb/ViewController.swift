//
//  ViewController.swift
//  webb
//
//  Created by Harsh Tiwari on 12/05/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    //var webView: WKWebView!
    
//    override func loadView() {
//        let webConfiguration = WKWebViewConfiguration()
//        webView = WKWebView(frame: .zero, configuration: webConfiguration)
//        webView.uiDelegate = self
//        view = webView
//    }
    
    let webView: WKWebView = {
        let prefs = WKWebpagePreferences ()
        prefs.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero,
                                configuration: configuration)
        return webView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(webView)
        guard let theURL = URL(string: "http://x.com") else {
            return
        }
        
        let myRequest = URLRequest(url: theURL)
        webView.load(myRequest)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.webView.evaluateJavaScript("document.documentElement.innerHTML") { result, error in
                guard let html = result as? String, error == nil else {
                    return
                }
                print(html)
            }
        }
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.webView.evaluateJavaScript("document.getElementById('searchInput').value") { result, error in
//                guard let html = result as? String, error == nil else {
//                    return
//                }
//                print(html)
//            }
//        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }


}

