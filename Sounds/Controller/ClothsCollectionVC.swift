//
//  ClothsCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit



class ClothsCollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

   
    


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return HomePageModel.clothsItemsData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "clothsView", for: indexPath) as! ClothsCollectionViewCell
    
        cell.clothsItemsImage.image      = HomePageModel.getClothsItemsImage(for: indexPath.row)
        cell.clothsItemsNameLabel.text   = HomePageModel.getClothsItemsName(for: indexPath.row)
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getClothsItemsName(for: indexPath.row))
    }

    

    

}
