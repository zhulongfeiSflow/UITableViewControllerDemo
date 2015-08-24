//
//  WebViewController.swift
//  UITableViewControllerDemo
//
//  Created by 朱龙飞 on 15/8/21.
//  Copyright (c) 2015年 朱龙飞. All rights reserved.
//

import Foundation
import UIKit

class WebViewController: UIViewController {
    
    var detailID = NSString()
    var detailURL = "http://qingbin.sinaapp.com/api/html/"
    var webView : UIWebView?
    
    func loadDataSource() {
        var urlString = detailURL + "\(detailID).html"
        urlString = "http://www.baidu.com"
        var url = NSURL(string: urlString)
        var urlRequest = NSURLRequest(URL :url!)
        webView!.loadRequest(urlRequest)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView=UIWebView()
        webView!.frame=self.view.frame
        webView!.backgroundColor=UIColor.grayColor()
        self.view.addSubview(webView!)
        
        loadDataSource()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // #pragma mark - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
