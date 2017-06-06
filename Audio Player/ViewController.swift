//
//  ViewController.swift
//  Audio Player
//
//  Created by 慧秀金 on 2017. 6. 6..
//  Copyright © 2017년 慧秀金. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer();

    @IBAction func play(_ sender: Any) {
        
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        
        player.pause()
    }
   
    @IBAction func sliderMoved(_ sender: Any) {
        
        player.volume = slider.value
    }
    @IBOutlet var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "arne-conspirito-breemer",ofType: "mp3")
        
        do {
        
            //try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
 
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
            player.play()
        
    }catch{
        
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

