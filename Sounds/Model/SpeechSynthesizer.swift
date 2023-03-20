//
//  SpeechSynthesizer.swift
//  Sounds
//
//  Created by Dambar Bista on 9/13/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import AVFoundation

// This method is for speak name of items on view when tap on items
struct SpeechSynthesizer {
    static let speechSynthesizer = AVSpeechSynthesizer()
    
    static func textToSpeech(text: String)  {
        // this  AVAudioSession method is for speak text when device is in silent mode
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback,mode: .default)
    
        } catch let error {
            print("This error message from SpeechSynthesizer \(error.localizedDescription)")
        }
        let speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: text)
        
        speechUtterance.rate = AVSpeechUtteranceMaximumSpeechRate / 2.3
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        speechSynthesizer.speak(speechUtterance)
    }
}

