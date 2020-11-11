//
//  AlphabetCollectionViewCell.swift
//  Animo
//
//  Created by Dambar Bista on 10/28/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class AlphabetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var alphabetLabel: UILabel!
    
    
    // if cell selected higlight the color
    override var isSelected: Bool {
        
        didSet {
            if self.isSelected {
                UIView.animate(withDuration: 0.3) { // for animation effect
                    self.backgroundColor = UIColor(red: 115/255, green: 190/255, blue: 170/255, alpha: 1.0)
                }
            }
            else {
                UIView.animate(withDuration: 0.3) { //
                    self.backgroundColor = nil
                }
            }
        }
    }
    
}
