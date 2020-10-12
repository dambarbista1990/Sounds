//
//  AnimalCollectionViewController.swift
//  Sounds
//
//  Created by Dambar Bista on 9/20/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit
import AVFoundation

/* Note for me: i am directlly making this class subclass of UICollectionViewController. for that reason i dont have to connect collection view from storybord to here.
 */
class AnimalCollectionVC: UICollectionViewController {

    
    var animalDataModel = AnimalModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AnimalModel.animalData.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.animalCellIdentifier, for: indexPath) as! AnimalCollectionViewCell
    
        cell.animalImage.image = AnimalModel.getAnimalImage(index: indexPath.item)
        cell.animalNameLabel.text = AnimalModel.getAnimalName(index: indexPath.item)
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 10
        cell.clipsToBounds = true
        
        return cell
    }
    
    
    // This method is speak the animal name and play animal voice after 1 sec. when item selected.
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: AnimalModel.getAnimalName(index: indexPath.row)) // this will read name
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0)  {
            AudioPlayer.playSound(with: AnimalModel.getAnimalSound(index: indexPath.row))  // play sound
            
        }
    }

}
