//
//  UIImageViewExtension.swift
//  apiJson
//
//  Created by Harsh Tiwari on 19/04/23.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    
    func setImage(imageUrl: String) {
        self.kf.setImage(with: URL(string: imageUrl))
    }
}
