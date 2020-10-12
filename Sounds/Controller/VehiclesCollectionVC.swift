//
//  VechilesCollectionVC.swift
//  Sounds
//
//  Created by Dambar Bista on 9/23/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit



class VehiclesCollectionVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var device = UIDevice.current.model
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return VehiclesModel.vehiclesData.count
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.vechileCellIdentifier, for: indexPath) as! VehiclesCollectionViewCell
        
        cell.vehicleImageView.image = VehiclesModel.getVehiclesImage(for: indexPath.row)
        cell.vehicleNameLabel.text = VehiclesModel.getVehiclesName(for: indexPath.row)
        
        cell.vehicleNameLabel.font = .systemFont(ofSize: 30)
        cell.vehicleNameLabel.font = .boldSystemFont(ofSize: 30)
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = UIColor.black.cgColor
        
        // Calling this method here to change the layer background color on cell
        changeLayerColor(on: cell.vehicleImageView.image!, for: cell)
        
        // Text label is white color so making sure text can be visible on cell
        if cell.layer.backgroundColor == UIColor.white.cgColor  {
            cell.vehicleNameLabel.textColor = UIColor.blue
        } else if cell.layer.backgroundColor == UIColor.black.cgColor {
            cell.vehicleNameLabel.textColor = UIColor.blue
        }
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: VehiclesModel.getVehiclesName(for: indexPath.row))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 ) {
            AudioPlayer.playSound(with: VehiclesModel.getVehiclesSound(for: indexPath.row))
        }
    }
    

    
    /* This method will change collectionView cell layer background color on each vehicle image to
     look clean and beautiful */
    func changeLayerColor(on vehiclesImageLayer: UIImage, for cell: UICollectionViewCell)   {
        
        switch vehiclesImageLayer {
            
        case UIImage(named: "policeCar.png"):
            cell.layer.backgroundColor = UIColor.red.cgColor
            
        case UIImage(named: "train.png"):
            cell.layer.backgroundColor = UIColor.orange.cgColor
            
        case UIImage(named: "fireTruck.png"):
            cell.layer.backgroundColor = UIColor.yellow.cgColor
            
        case UIImage(named: "helicopter.png"):
            cell.layer.backgroundColor = UIColor.white.cgColor
            
        case UIImage(named: "ambulance.png"):
            cell.layer.backgroundColor = UIColor.blue.cgColor
            
        case UIImage(named: "bike.png"):
            cell.layer.backgroundColor = UIColor.darkGray.cgColor
            
        case UIImage(named: "airplane.png"):
            cell.layer.backgroundColor = UIColor.purple.cgColor
            
        case UIImage(named: "ship.png"):
            cell.layer.backgroundColor = UIColor.systemIndigo.cgColor
            
        case UIImage(named: "motorCycle.png"):
            cell.layer.backgroundColor = UIColor.black.cgColor
            
        case UIImage(named: "schoolBus.png"):
            cell.layer.backgroundColor = UIColor.gray.cgColor
            
        case UIImage(named: "excavator.png"):
            cell.layer.backgroundColor = UIColor.brown.cgColor
            
        case UIImage(named: "rocket.png"):
            cell.layer.backgroundColor = UIColor.green.cgColor
            
        default:
            break
        }
    }
    
}
