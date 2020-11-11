//
//  AudioPlayer.swift
//  Sounds
//
//  Created by Dambar Bista on 9/16/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit

var player = AVAudioPlayer()   // Making it global varible so i can get it from other VC

// This method will play sound of items
struct AudioPlayer {
    
    static func playSound(with soundName: String)  {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url!)
            try AVAudioSession.sharedInstance().setCategory(.playback,mode: .default) // play sound when device in silent mode
            
            player.play()
            
        } catch let error {
            print("Error message from AVAudio Player  \(error.localizedDescription)")
        }
    }
    
    
    // this method will stop the sound
    static func stopSound() {
        
        if player.isPlaying {
            player.stop()
        }
    }
    
}
