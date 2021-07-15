//
//  KitchenCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class KitchenCollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

   
    // MARK:- UICollectionView DataSource And Delegate

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return HomePageModel.kitchenItemsData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.kitchenCellIdentifier, for: indexPath) as! KitchenCollectionViewCell
        
        cell.kitchenItemsNameLabel.text     = HomePageModel.getKitchenItemsName(for: indexPath.row)
        cell.kitchenItemsImage.image        = HomePageModel.getKitchenItemsImage(for: indexPath.row)
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getKitchenItemsName(for: indexPath.row))
    }

 
}
