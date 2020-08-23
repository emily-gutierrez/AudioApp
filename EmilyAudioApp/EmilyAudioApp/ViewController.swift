//
//  ViewController.swift
//  EmilyAudioApp
//
//  Created by Emily Gutierrez on 8/23/20.
//  Copyright © 2020 Emily Gutierrez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let sound = Bundle.main.path(forResource: "Leaves from the vine", ofType: "aiff")
        
        do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            } catch{
                print(error)
            }
        }
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
    }
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
    
    
    
    
}
