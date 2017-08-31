//
//  Art.swift
//  MyBook
//
//  Created by ktds 14 on 2017. 8. 31..
//  Copyright © 2017년 ktds 14. All rights reserved.
//

import Foundation

import UIKit



class Art {
    
    
    var title:String?
    var artist:String?
    var thumbImageURL:String?
    var tumbImage:UIImage?
    
    init(title:String,artist:String,thumbImageURL:String) {
        
        self.title = title
        self.artist = artist
        self.thumbImageURL = thumbImageURL
        
        self.tumbImage = nil
    }
    
    
}

