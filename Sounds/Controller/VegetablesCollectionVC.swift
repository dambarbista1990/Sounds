//
//  VegetablesCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit



class VegetablesCollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

 

    // MARK:- UICollectionView DataSource And Delegate

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return HomePageModel.vegetablesItemsData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.vegetablesCellIdentifier, for: indexPath) as! VegetablesCollectionViewCell
        
        cell.vegetablesItemsNameLabel.text  = HomePageModel.getVegetablesItemsName(for: indexPath.row)
        cell.vegetablesItemsImage.image     = HomePageModel.getVegetablesItemsImage(for: indexPath.row)
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getVegetablesItemsName(for: indexPath.row))
    }

   

}
