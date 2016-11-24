//
//  ViewController.swift
//  GI Fitness beta-1.0
//
//  Created by EJ Gonzalez on 10/30/16.
//  Copyright © 2016 Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mainScrollView: UIScrollView!
    var imageArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageArray = [UIImage (named: "Spy-1.png")!, UIImage (named: "Spy-2.png")!, UIImage (named:  "Spy-3.png")!, UIImage (named:  "Spy-4.png")!, UIImage (named: "Spy-5.png")!, UIImage (named: "Spy-6.png")!]
        
        
        for i in 0..<imageArray.count{
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .ScaleAspectFill
            let xPosition = self.mainScrollView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

   