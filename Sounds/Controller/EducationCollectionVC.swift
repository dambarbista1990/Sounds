//
//  EducationCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class EducationCollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    // MARK:- UICollectionView DataSource And Delegate

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return HomePageModel.educationItemData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.educationCellIdentifier, for: indexPath) as! EducationCollectionViewCell
    
        cell.educationItemsNameLabel.text = HomePageModel.getEducationItemsName(for: indexPath.row)
        cell.educationItemsImage.image    = HomePageModel.getEducationItemsImage(for: indexPath.row)
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getEducationItemsName(for: indexPath.row))
    }



}
