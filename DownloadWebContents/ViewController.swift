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
        
        if let myURL = URL(string:"https://stackoverflow.com") {
            webView.loadRequest(URLRequest(url: myURL))
            //webView.loadHTMLString("<H1>Hello</H1>", baseURL: nil)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

