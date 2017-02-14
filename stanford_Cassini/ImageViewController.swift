//
//  ImageViewController.swift
//  stanford_Cassini
//
//  Created by Philippe Blanchette on 2017-02-14.
//  Copyright © 2017 Philippe Blanchette. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageUrl: NSURL?{
        didSet{
            image = nil
            fetchImage()
        }
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    private func fetchImage(){
        if let url = imageUrl{
            if let imageData = NSData(contentsOf: url as URL){
                image = UIImage(data:imageData as Data)
            }
        }
    }
    
    private var imageView = UIImageView()
    
    private var image : UIImage?{
        set{
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
        }
        get{
            return imageView.image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        imageUrl = NSURL(string: urlBank.set1["test1"]!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
