//
//  ColorModel.swift
//  Animo
//
//  Created by Dambar Bista on 10/21/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

// This method is for change main/home page collectionView cell backroung color

struct ColorModel {
    static let color =  [
        
        ColorData(backgroundColor: .systemGreen),
        ColorData(backgroundColor: .systemBlue),
        ColorData(backgroundColor: .systemOrange),
        ColorData(backgroundColor: .red),
        ColorData(backgroundColor: .systemIndigo),
        ColorData(backgroundColor: .systemGray),
        ColorData(backgroundColor: .brown),
        ColorData(backgroundColor: .systemPurple),
        
        
    ]
    
    static func getBackgroundColors(for cellIndex: Int) -> UIColor {
        
        return color[cellIndex].backgroundColor
    }
}
    
    
