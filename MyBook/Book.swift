//
//  Book.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 17..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import Foundation
import UIKit





class Book: NSObject, NSCoding {
    var title:String?
    var writer:String?
    var publisher:String?
    var coverImage:UIImage?
    var price:Int?
    var desc:String?
    var url:String?
    
    
    
    init(title:String?,writer:String? = nil,publisher:String? = nil,coverImage:UIImage? = nil,price:Int? = nil,description:String? = nil,url:String? = nil)
    {
        
        self.title = title
        self.writer = writer
        self.publisher = publisher
        self.coverImage = coverImage
        self.price = price
        self.desc = description
        self.url = url
        
    }
    
    
   convenience init(title:String, writer:String)
    {
        
        self.init(title: title, writer:writer)
        
        self.publisher = nil
        self.coverImage = nil
        self.price = nil
        self.desc = nil
        self.url = nil
    }
    
    
    init(title:String, writer:String, publisher:String)
    {
        self.title = title
        self.writer = writer
        self.publisher = publisher
        self.coverImage = nil
        self.price = nil
        self.desc = nil
        self.url = nil
    }
    
    required init?(coder aDecoder: NSCoder){
    
        self.title = aDecoder.decodeObject(forKey: "title") as! String
        self.writer = aDecoder.decodeObject(forKey: "writer") as? String
        self.publisher = aDecoder.decodeObject(forKey: "publisher") as? String
        self.coverImage = aDecoder.decodeObject(forKey: "coverImage") as? UIImage
        self.price = aDecoder.decodeObject(forKey: "price") as? Int
        self.desc = aDecoder.decodeObject(forKey: "desc") as? String
        self.url = aDecoder.decodeObject(forKey: "url") as? String
     
        
    }
    
    func encode(with aCoder: NSCoder){
        
        aCoder.encode(self.title, forKey: "title")
        aCoder.encode(self.writer, forKey: "writer")
        aCoder.encode(self.publisher, forKey: "publisher")
        aCoder.encode(self.coverImage, forKey: "coverImage")
        aCoder.encode(self.price, forKey: "price")
        aCoder.encode(self.desc, forKey: "desc")
        aCoder.encode(self.url, forKey: "url")
    }

}
