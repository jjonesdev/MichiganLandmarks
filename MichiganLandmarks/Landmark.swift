//
//  Landmark.swift
//  MichiganLandmarks
//
//  Created by Jordan on 8/28/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import Foundation
import UIKit

class Landmark {
    
    var image: UIImage
    var title: String
    var details: String
    
    init(image: UIImage, title: String, details: String) {
        self.image = image
        self.title = title
        self.details = details
    }
    
}
