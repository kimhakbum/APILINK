//
//  Book.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 17..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import Foundation
import UIKit





class Book {
    var title:String
    var writer:String
    var publisher:String
    var coverImage:UIImage
    var price:Int
    var description:String
    
    
    
    init(title:String,writer:String,publisher:String,coverImage:UIImage,price:Int,description:String)
    {
        
        self.title = title
        self.writer = writer
        self.publisher = publisher
        self.coverImage = coverImage
        self.price = price
        self.description = description
        
    }

}
