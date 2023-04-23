//
//  CollectionViewCell.swift
//  collectionTableView
//
//  Created by Anarock on 11/04/23.
//

import UIKit
import Foundation

struct CollectionViewCellModel {
    var color: UIColor
    var name: String
}

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var nameLabel: UILabel!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//
    
    
    }

}
