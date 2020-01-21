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
    
  var imageNumber = 0
    var messageNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func messageLabelPressed(_ sender: UIButton) {
        let messages = ["Lit",
                    "Giddyup",
                    "Send it",
                    "Nice"]
        
        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        if messageNumber == messages.count {
        messageNumber = 0
        }

        // let imageName = "image" + String(imageNumber)
       let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 10
        { imageNumber = 0
    }
        
        
        //       let fabulousMessage = "You Are Fabulous!"
        //       let greatMessage = "You Are Great!"
        //       let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLabel.text == fabulousMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage (named: "image1")
        //
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage (named: "image2")
        //        } else {
        //            messageLabel.text = fabulousMessage
        //            imageView.image = UIImage (named: "image0")
        //        }
    }
    
    @IBOutlet weak var messageLabel: UILabel!
}

