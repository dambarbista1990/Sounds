//
//  VechilesDataCollection.swift
//  Sounds
//
//  Created by Dambar Bista on 9/23/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

// Storing all the data of vechiles for user interface on VechilesCollectionVC
struct VehiclesModel {
    
    
    static let vehiclesData = [
        
         VehiclesData(name: "Police Car", image: UIImage(named: "policeCar.png")!, sound: "police"),
         VehiclesData(name: "Train", image: UIImage(named: "train.png")!, sound: "train"),
         VehiclesData(name: "Helicopter", image: UIImage(named: "helicopter.png")!, sound: "helicopter"),
         VehiclesData(name: "Fire Truck", image: UIImage(named: "fireTruck.png")!, sound: "fireTruck"),
         VehiclesData(name: "Bike", image: UIImage(named: "bike.png")!, sound: "bike"),
         VehiclesData(name: "Ambulance", image: UIImage(named: "ambulance.png")!, sound: "ambu"),
         VehiclesData(name: "School Bus", image: UIImage(named: "schoolBus.png")!, sound: "bus"),
         VehiclesData(name: "Airplane", image: UIImage(named: "airplane.png")!, sound: "airplane"),
         VehiclesData(name: "Ship", image: UIImage(named: "ship.png")!, sound: "ship"),
         VehiclesData(name: "Motor Cycle", image: UIImage(named: "motorCycle.png")!, sound: "motorCycle"),
         VehiclesData(name: "Rocket", image: UIImage(named: "rocket.png")!, sound: "rocket"),
         VehiclesData(name: "Excavator", image: UIImage(named: "excavator.png")!, sound: "excavator"),
    
        ]
    
    
    // Getting the images of vechiles for collectionView
    static func getVehiclesImage(for indexPath: Int) -> UIImage {
        return vehiclesData[indexPath].image
    }
    
    
    // Getting the names of Vechiles for collectionView
    static func getVehiclesName(for indexPath: Int) -> String {
        return vehiclesData[indexPath].name
    }
    
    
    // Getting the sound of vechiles for collectionsView
    static func getVehiclesSound(for indexPath: Int) -> String {
        return vehiclesData[indexPath].sound
    }
    
    
    
    
}
