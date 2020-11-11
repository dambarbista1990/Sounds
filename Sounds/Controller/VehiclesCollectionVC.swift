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
    
    override func viewDidDisappear(_ animated: Bool) {
        AudioPlayer.stopSound()
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return VehiclesModel.vehiclesData.count
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.vechileCellIdentifier, for: indexPath) as! VehiclesCollectionViewCell
        
        cell.vehicleImageView.image     = VehiclesModel.getVehiclesImage(for: indexPath.row)
        cell.vehicleNameLabel.text      = VehiclesModel.getVehiclesName(for: indexPath.row)
        
        //cell.vehicleNameLabel.font      = UIFont(name: "optima", size: 30)
        cell.layer.borderWidth          = 3
        cell.layer.cornerRadius         = 10
        cell.layer.borderColor          = UIColor.systemRed.cgColor
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: VehiclesModel.getVehiclesName(for: indexPath.row))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 ) {
            AudioPlayer.playSound(with: VehiclesModel.getVehiclesSound(for: indexPath.row))
        }
    }
    
}
