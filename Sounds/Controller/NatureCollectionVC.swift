//
//  NatureCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit


class NatureCollectionVC: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    
    // MARK:- UICollectionView DataSource and Delegate
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return HomePageModel.natureItemsData.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.natureCellIdentifier, for: indexPath) as! NatureCollectionViewCell
        
        cell.natureItemsImage.image     = HomePageModel.getNatureItemsImage(for: indexPath.row)
        cell.natureItemsNameLable.text  = HomePageModel.getNatureItemsName(for: indexPath.row)
        
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getNatureItemsName(for: indexPath.row))
    }
    
    
    
}
