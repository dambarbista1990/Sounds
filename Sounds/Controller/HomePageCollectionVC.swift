//
//  MainCollectionVCCollectionViewController.swift
//  Animo
//
//  Created by Dambar Bista on 10/18/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit


class HomePageCollectionVC: UICollectionViewController {
    
    
    
    let backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.collectionViewLayout = createCompositionalLayout()
        navigationItem.backBarButtonItem = backBarButtonItem
    
    }
    
    
    // MARK:- UICollectionView DataSource and Delegate
    
    func createCompositionalLayout() -> UICollectionViewCompositionalLayout {

        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(0.8))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 8, trailing: 8)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        let layout = UICollectionViewCompositionalLayout(section: section)

        return layout

    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HomePageModel.homePageItemsData.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainView", for: indexPath) as! HomePageCollectionViewCell
        
        cell.layer.cornerRadius             = 10
        cell.contentImageView.contentMode   = .scaleAspectFit
        cell.contentImageView.image         = HomePageModel.getHomePageItemsImage(for: indexPath.row)
        cell.contentNameLabel.text          = HomePageModel.getHomePageItemsName(for: indexPath.row)
        cell.backgroundColor                = ColorModel.getBackgroundColors(for: indexPath.row)
      
        return cell
    }
    

    // Using Dispatch queue to wait few second to navigate to other VC unitl name has been speak.
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        SpeechSynthesizer.textToSpeech(text: HomePageModel.getHomePageItemsName(for: indexPath.row))
        
        let storybordID = StoryboardID.storyboardID[indexPath.row]
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
            if let viewController = self.storyboard?.instantiateViewController(withIdentifier: storybordID) {
                self.navigationController?.pushViewController(viewController, animated: true)
                
            }
        }
    }
    
    
}
