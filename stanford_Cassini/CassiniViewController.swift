//
//  CassiniViewController.swift
//  stanford_Cassini
//
//  Created by Philippe Blanchette on 2017-02-16.
//  Copyright © 2017 Philippe Blanchette. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    
    private struct storyboard{
    
    static let ShowImageSegue = "showImage"
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if segue.identifier == storyboard.ShowImageSegue{
            if let ivc = (segue.destination as? ImageViewController){
                let imageName = (sender as? UIButton)?.currentTitle
                
                
                ivc.imageUrl = urlBank.imageNamed(imageName: String(imageName!))
                
                ivc.title = imageName
                
            }
        }
        
    }
    

}
