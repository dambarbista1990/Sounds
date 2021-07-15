//
//  TechnologyCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class TechnologyCollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK:- UICollectionView DataSource And Delegate

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return HomePageModel.educationItemData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.technologyCellIdentifier, for: indexPath) as! TechnologyCollectionViewCell
        
        cell.technologyItemsNameLabel.text = HomePageModel.getTechnologyItemsName(for: indexPath.row)
        cell.technologyItemsImage.image    = HomePageModel.getTechnologyItemsImage(for: indexPath.row)
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getTechnologyItemsName(for: indexPath.row))
    }

   

}
