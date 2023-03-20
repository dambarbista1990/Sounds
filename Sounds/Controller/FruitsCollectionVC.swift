//
//  FruitsCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class FruitsCollectionVC: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK:- UICollectionView DataSource And Delegate
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HomePageModel.fruitsItemsData.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.fruitsCellIdentifier, for: indexPath) as! FruitsCollectionViewCell
        cell.fruitsItemsNameLabel.text  = HomePageModel.getFruitsItemsName(for: indexPath.row)
        cell.fruitsItemsImage.image     = HomePageModel.getFruitsItemsImage(for: indexPath.row)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getFruitsItemsName(for: indexPath.row))
    }
}
