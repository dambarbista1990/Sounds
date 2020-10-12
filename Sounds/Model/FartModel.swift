//
//  FartDataModel.swift
//  Sounds
//
//  Created by Dambar Bista on 9/25/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit


// Storing all the data of FartSound for user interface on FartVC -> tableView
struct FartModel {
    
    static let fartData = [
        
        FartData(image: UIImage(named: "frogFart.png")!, sound: "fart1"),
        FartData(image: UIImage(named: "octuFart.png")!, sound: "fart3"),
        FartData(image: UIImage(named: "roosterFart.png")!, sound: "fart8"),
        FartData(image: UIImage(named: "rabbitFart.jpg")!, sound: "fart6"),
        FartData(image: UIImage(named: "bullFart.png")!, sound: "fart2"),
        FartData(image: UIImage(named: "sheepFart.jpg")!, sound: "fart4"),
        FartData(image: UIImage(named: "lionFart.jpg")!, sound: "fart7"),
        FartData(image: UIImage(named: "hippoFart.png")!, sound: "fart5"),
        
    ]
    
    static func getFartImage(for index: Int) -> UIImage {
        return fartData[index].image
    }
    
    
    static func getFartSound(for index: Int) -> String  {
        return fartData[index].sound
    }
}
