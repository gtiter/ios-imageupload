//
//  ViewController.swift
//  singleViewTest
//
//  Created by 黄超 on 2018/07/11.
//  Copyright © 2018年 黄超. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate{

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var lbltxt: UILabel!

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.webView.delegate = self
        //let url = URL(string: "https://www.google.com")
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            webView.loadRequest(URLRequest(url: url))
        }
        //webView.loadRequest(URLRequest(url: url!))
    }
    
    @IBAction func press(_ sender: UIButton) {
        lbltxt.text = "button clicked"
        
    }
}

