//
//  ViewController.swift
//  TableViewXIbFile
//
//  Created by Duyi Li on 2/15/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let images = ["food1", "food2", "food3", "food4", "food5", "food6","food7", "food8", "food9", "food10"]
    
    let imageLabel = ["food1", "food2", "food3", "food4", "food5", "food6","food7", "food8", "food9", "food10"]
    
    @IBOutlet weak var tblView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.imgView.image = UIImage(named:images[indexPath.row])
        
        cell.lblImage.text = imageLabel[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

