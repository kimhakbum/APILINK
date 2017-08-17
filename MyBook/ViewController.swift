//
//  ViewController.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 17..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginViewControllerProtocol {

    
    @IBOutlet weak var idTextField: UILabel!
    
    @IBOutlet weak var pwTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let idStr = UserDefaults.standard.object(forKey: "userid") as? String
        let pwStr = UserDefaults.standard.object(forKey: "userpw") as? String
        
        
        
        if let id = idStr, let pw = pwStr {
            let welcomAlert = UIAlertController(title: "My Book", message: "\(id)님 환영합니다.", preferredStyle: .alert)
            
            
            let closeAction =  UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            
            
            welcomAlert.addAction(closeAction)
            
            self.present(welcomAlert, animated: true, completion: nil)
        }
        else{
            self.performSegue(withIdentifier: "loginvc", sender: nil)
        }
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        
        
        if let vc = segue.destination as? LoginViewController {
            vc.delegate = self
        }
        
        
     }
    
    
    func send(withId:String, password:String)
    {
        self.idTextField.text = withId
        self.pwTextField.text = password
        
        UserDefaults.standard.set(withId, forKey:"userid")
        UserDefaults.standard.set(password, forKey:"userpw")
    }

 


}

