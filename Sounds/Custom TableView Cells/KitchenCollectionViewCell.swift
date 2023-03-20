//
//  KitchenCollectionViewCell.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class KitchenCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var kitchenItemsImage: UIImageView!
    @IBOutlet weak var kitchenItemsNameLabel: UILabel!
    
    // this method for display the border color when selectedd
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                UIView.animate(withDuration: 0.3) { // for animation effect
                    self.layer.borderColor = UIColor.red.cgColor
                    self.layer.borderWidth = 2
                    self.layer.cornerRadius = 15
                }
            }
            else {
                UIView.animate(withDuration: 0.3) { //
                    self.layer.borderColor = nil
                    self.layer.borderWidth = 0
                }
            }
        }
    }
}
