//
//  LandmarkDetails.swift
//  MichiganLandmarks
//
//  Created by Jordan on 8/28/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import Foundation
import UIKit


class LandmarkDetails: UIViewController {
    
    
    @IBOutlet weak var landmarkDetailsImage: UIImageView!
    @IBOutlet weak var landmarkDetailTitle: UILabel!
    @IBOutlet weak var landmarkParagraph: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       navigationController?.navigationBar.prefersLargeTitles = false
       setDetails(details: Landmark(image: #imageLiteral(resourceName: "headlands"), title: "Headlands Dark Park", details: "It's dark!"))
       
        
    }
    
    func setDetails(details: Landmark) {
        landmarkDetailsImage.image = details.image
        landmarkDetailTitle.text = details.title
        landmarkParagraph.text = details.details
    }
        
    
}
