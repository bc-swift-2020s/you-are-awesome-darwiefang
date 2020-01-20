//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by darwie fang on 13/1/20.
//  Copyright © 2020 darwie fang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func messageLabelPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Fabulous!"
  
        imageView.image = UIImage (named: "image0")
    }
    
    @IBOutlet weak var messageLabel: UILabel!
}

