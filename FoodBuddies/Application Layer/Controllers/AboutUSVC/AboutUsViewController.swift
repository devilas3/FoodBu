//
//  AboutUsViewController.swift
//  FoodBuddies
//
//  Created by Suraj Sonawane on 26/06/17.
//  Copyright © 2017 demo. All rights reserved.
//

import UIKit

class AboutUsViewController: BaseVC,UIWebViewDelegate {

//TODO: - General
    
    
//TODO: - Controls
    
    
    @IBOutlet weak var webView: UIWebView!
    
    
//TODO: - Let's Code
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Adding webView content
        do {
            guard let filePath = Bundle.main.path(forResource: "webpage", ofType: "html")
                else {
                    // File Error
                    print ("File reading error")
                    return
            }
            
            let contents =  try String(contentsOfFile: filePath, encoding: .utf8)
            let baseUrl = URL(fileURLWithPath: filePath)
            webView.loadHTMLString(contents as String, baseURL: baseUrl)
        }
        catch {
            print ("File HTML error")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        var screenName : String = String()
        if FoodBuddiesSingleton.shared.htmlValue == 1{
            screenName = "About Us"
        }else if FoodBuddiesSingleton.shared.htmlValue == 2{
            screenName = "Terms & Conditions"
        }else if FoodBuddiesSingleton.shared.htmlValue == 3{
            screenName = "Privacy Policy"
        }
        
        showAlert("", message: screenName)
    }
    
    
//TODO: - Function
    
    
    
//TODO: - UIWebViewDelegate Method Implementation
    public func webViewDidStartLoad(_ webView: UIWebView){
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    public func webViewDidFinishLoad(_ webView: UIWebView){
       UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    
//TODO: - UIButton Action
   
    @IBAction func btnBackClick(_ sender: Any) {
    }

}
