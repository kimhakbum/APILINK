//
//  WebViewController.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 17..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    
    @IBOutlet weak var shopWebView: UIWebView!
    
    
    
    var shopURL:String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        guard let booKURL = shopURL else {
              return
        }
        
        
        if let urlIns = URL(string: booKURL){
            
            let urlRequset = URLRequest(url: urlIns)
            self.shopWebView.loadRequest(urlRequset)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
