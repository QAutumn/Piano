//
//  ViewController.swift
//  Piano
//
//  Created by 澈水 on 2022/4/3.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    var sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    @IBAction func play(_ sender: Any) {
        let btn = sender as! UIButton
        do {
        
            let url = Bundle.main.url(forResource: sounds[btn.tag - 1], withExtension: "wav")
            guard let url = url else { return }
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print(error)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

