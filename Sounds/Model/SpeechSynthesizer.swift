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
    
    static func textToSpeech(text: String)  {
        
        let speechSynthesizer = AVSpeechSynthesizer()
        let speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: text)
        
        speechUtterance.rate = AVSpeechUtteranceMaximumSpeechRate / 2.3
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        speechSynthesizer.speak(speechUtterance)
        
    }
    
}

