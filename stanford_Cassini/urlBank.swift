//
//  urlBank.swift
//  stanford_Cassini
//
//  Created by Philippe Blanchette on 2017-02-14.
//  Copyright © 2017 Philippe Blanchette. All rights reserved.
//

import Foundation


struct urlBank{
    
    static let test1 = "https://www.newton.ac.uk/files/covers/968361.jpg"
    
    static let set1 = [
        "test1" : "http://marcinignac.com/blog/fast-dynamic-geometry-in-webgl/fast-dynamic-geometry.jpg"
    ]
    
    static func imageNamed(imageName:String?) -> NSURL?{
    
        if let urlString = set1[imageName ?? ""]{
            return NSURL(string:urlString)
        } else {
            return nil
        }
    }
    
}
