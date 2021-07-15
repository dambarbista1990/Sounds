//
//  ColorAndShapeCollectionVC.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class ColorAndShapeCollectionVC: UICollectionViewController {
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
    // MARK:- UICollectionView DataSource And Delegate

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return HomePageModel.colorAndShapeItemsData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.colorShapeCellIdentifier, for: indexPath) as! ColorAndShapeCollectionViewCell
        
        cell.colorAndShapeItemsImage.image        = HomePageModel.getColorNshapeItemsImage(for: indexPath.row)
        cell.colorAndShapeItemsNameLabel.text     = HomePageModel.getColorNshapeItemsName(for: indexPath.row)
       // cell.colorAndShapeItemsImage.layer.cornerRadius        =  cell.colorAndShapeItemsImage.frame.size.height/2
        cell.colorAndShapeItemsImage.layer.cornerRadius = 45
    
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        SpeechSynthesizer.textToSpeech(text: ColorAndShapeModel.getShapeAndColorName(for: indexPath.row))
    }

   

}
