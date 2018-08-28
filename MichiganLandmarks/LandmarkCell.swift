//
//  LandmarkCell.swift
//  MichiganLandmarks
//
//  Created by Jordan on 8/28/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

class LandmarkCell: UITableViewCell {

    @IBOutlet weak var landmarkImageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    func setImage(setImage: Landmark) {
        landmarkImageView.image = setImage.image
        landmarkLabel.text = setImage.title
    }
    
}
