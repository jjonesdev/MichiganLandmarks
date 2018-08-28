//
//  ViewController.swift
//  MichiganLandmarks
//
//  Created by Jordan on 8/28/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images: [Landmark] = []
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = createArray()
        
        // displays data on table view when available
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Michigan Landmarks"
        
    }

    
    
    func createArray() -> [Landmark] {
        
        var tempImages: [Landmark] = []
        
        let landmark1 = Landmark(image: #imageLiteral(resourceName: "headlands"), title: "Headlands Dark Sky Park", details: "It's very dark here")
        let landmark2 = Landmark(image: #imageLiteral(resourceName: "lakemichigan"), title: "Lake Michigan", details: "It's very dark here")
        let landmark3 = Landmark(image: #imageLiteral(resourceName: "tire"), title: "I-94 Uniroyal Tire", details: "It's very dark here")
        let landmark4 = Landmark(image: #imageLiteral(resourceName: "MackinawBridge"), title: "Mackinac Bridge", details: "It's very dark here")
        let landmark5 = Landmark(image: #imageLiteral(resourceName: "Nordhouse"), title: "Nordhouse Dunes", details: "It's very dark here")
        let landmark6 = Landmark(image: #imageLiteral(resourceName: "PicturedRocks"), title: "Pictured Rocks", details: "It's very dark here")
        let landmark7 = Landmark(image: #imageLiteral(resourceName: "umich-stadium"), title: "The Big House", details: "It's very dark here")
        
        tempImages.append(landmark1)
        tempImages.append(landmark2)
        tempImages.append(landmark3)
        tempImages.append(landmark4)
        tempImages.append(landmark5)
        tempImages.append(landmark6)
        tempImages.append(landmark7)
        
        return tempImages
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let image = images[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as! LandmarkCell
        
        // pass in image data (created in LandmarkCell) to image array (declared above)
        cell.setImage(setImage: image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controller = storyboard.instantiateViewController(withIdentifier: "LandmarkDetails") as! LandmarkDetails
        
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
}




