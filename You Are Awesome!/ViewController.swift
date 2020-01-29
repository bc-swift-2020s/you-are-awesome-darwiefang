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
    
  var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func messageLabelPressed(_ sender: UIButton) {
        let messages = ["Lit",
                    "Giddyup",
                    "Send it",
                    "Nice",
        "Genius Bar",
        "Johnny Ive"]
        
        var newMessageNumber = Int.random(in: 0...messages.count-1)
        repeat {
            
            newMessageNumber = Int.random(in: 0...messages.count-1)
        }
        while messageNumber == newMessageNumber
        
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        

        var newImageNumber = Int.random(in: 0...totalNumberOfImages)
        while imageNumber == newImageNumber {
           newImageNumber = Int.random(in: 0...totalNumberOfImages)
        }
        
    
    }
    
    @IBOutlet weak var messageLabel: UILabel!
}

