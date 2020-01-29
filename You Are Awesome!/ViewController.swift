//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by darwie fang on 13/1/20.
//  Copyright © 2020 darwie fang. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
  var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var soundNumber = -1
    let totalNumberofSounds = 6
    var audioPlayer = AVAudioPlayer
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
                    do {
                        try audioPlayer = AVAudioPlayer(data: sound.data)
                        audioPlayer.play()
                    } catch {
                        print("Error: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
                    }
                    
                } else {
                    print("Error could not read file sound0")
            
            
        
        }
    }
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber = Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
        }
        
    }
    @IBOutlet weak var messageLabel: UILabel!
    @IBAction func messageLabelPressed(_ sender: UIButton) {
        let messages = ["Lit",
                    "Giddyup",
                    "Send it",
                    "Nice",
        "Genius Bar",
        "Johnny Ive"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]

        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberofImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        playSound(name: "sound\(soundNumber)")
        
        
        
}

