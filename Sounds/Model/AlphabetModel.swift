//
//  AlphabetModel.swift
//  Animo
//
//  Created by Dambar Bista on 10/28/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation

// Alphabet data
struct AlphabetModel {
    
    /// This  upper case alphabet for display in AlphabetCollectionVC
    static let aplhabetsData = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "", "", "", "", "", "", "", "", "", "1", "2", "3", "4", "5","6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    
    /// This lower case alphabet for speak by speectSynthesizer , i could use the above alphabet for speak but i didn't want speechSyntherizer say capitl A ,Capital B
    /// that's why i am using lower case alphabet here, by doing this speechSynthesizer will only say "A" not capital A
    
    static let lowerCaseAlphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "", "", "", "", "", "", "", "", "", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"
    ]
}
