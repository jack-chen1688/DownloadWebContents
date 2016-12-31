//
//  ViewController.swift
//  DownloadWebContents
//
//  Created by Xuehua Chen on 12/30/16.
//  Copyright © 2016 Xuehua Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        ///Use loadHTMLString to diplay HTML string in web view.
//        webView.loadHTMLString("<H1>Hello</H1>", baseURL: nil)
        
//        /// Use loadRequest to load a URL into webview
//        if let myURL = URL(string:"https://stackoverflow.com") {
//            webView.loadRequest(URLRequest(url: myURL))
//        }
        
//        ///Use dataTask function to get contents for a URL
//        if let myURL = URL(string:"https://stackoverflow.com") {
//            let task = URLSession.shared.dataTask(with: myURL, completionHandler: {
//                (data, respose, error) in
//                
//                if error != nil {
//                    print(error as Any)
//                } else {
//                    if let unwrappedData = data {
//                        let strData = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
//                            as! String
//                        print(strData)
//                    }
//                }
//            })
//            task.resume()
//        }
        
        ///Use dataTask function for a URL request
        if let myURL = URL(string:"http://www.stackoverflow.com") {
            let myRequest = URLRequest(url: myURL)
            let task = URLSession.shared.dataTask(with: myRequest, completionHandler: {
                (data, response, error) in
                
                if error != nil {
                    print(error as Any)
                } else {
                    if let unwrappedData = data {
                        let strData = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                            as! String
                        print(strData)
                    }
                }
            })
            task.resume()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

