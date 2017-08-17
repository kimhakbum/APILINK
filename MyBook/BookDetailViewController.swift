//
//  BookDetailViewController.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 17..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    
    var book:Book?
    
    
    @IBOutlet weak var bookCoverImage: UIImageView!
    
    @IBOutlet weak var bookWriteLabel: UILabel!
    
    @IBOutlet weak var bookPublisherLabel: UILabel!
    
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    @IBOutlet weak var bookDescriptionTextView: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        guard let newBook = self.book else{
            
            return
        }
        
        self.bookCoverImage.image = newBook.coverImage
        self.bookPublisherLabel.text = newBook.publisher
        self.bookPriceLabel.text = String(newBook.price)
        self.bookWriteLabel.text = newBook.writer
        self.bookDescriptionTextView.text = newBook.description
        
        
        // Do any additional setup after loading the view.
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
