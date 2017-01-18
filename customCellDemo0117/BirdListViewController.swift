//
//  ViewController.swift
//  customCellDemo0117
//
//  Created by Amy Giver on 1/17/17.
//  Copyright © 2017 Amy Giver Squid. All rights reserved.
//

import UIKit

class BirdListViewController: UITableViewController, ShowBirdDelegate {
    
    let flightlessBirds = ["emu", "ostrich", "penguin", "cassowary", "kiwi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flightlessBirds.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "birdCell") as! BirdCell
        cell.birdLabel?.text = "My flightless bird is the \(flightlessBirds[indexPath.row])"
        cell.birdImage.contentMode = .scaleAspectFit
        cell.delegate = self
        return cell
    }
    
    func birdButtonWasPressed(by cell:BirdCell){
        print("The delegate recognizes the button press")
        
        if cell.birdImage.image == nil {
            let index = tableView.indexPath(for: cell)!
            cell.birdImage.image = UIImage(named: flightlessBirds[index.row])
            cell.birdButton.setTitle("Hide this bird", for: .normal)
        }
        else {
            cell.birdImage.image = nil
             cell.birdButton.setTitle("Show this bird", for: .normal)
        }
        
    }

    
    
    
    
    
    
    
}
