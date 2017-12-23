//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//


/* 1st way
import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        var url: URL
        
        
        switch sender.tag {
        case 1:
            url = Bundle.main.url(forResource: "note1", withExtension: "wav" )!
        case 2:
            url = Bundle.main.url(forResource: "note2", withExtension: "wav" )!
        case 3:
            url = Bundle.main.url(forResource: "note3", withExtension: "wav" )!
        case 4:
            url = Bundle.main.url(forResource: "note4", withExtension: "wav" )!
        case 5:
            url = Bundle.main.url(forResource: "note5", withExtension: "wav" )!
        case 6:
            url = Bundle.main.url(forResource: "note6", withExtension: "wav" )!
        case 7:
            url = Bundle.main.url(forResource: "note7", withExtension: "wav" )!
        default:
            url = Bundle.main.url(forResource: "", withExtension: "" )!
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as Error {
            print(error)
        }
    }
}
*/


// 2nd way
import UIKit
import AudioToolbox

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func notePressed(_ sender: UIButton) {
        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
}

