//
//  BirdCell.swift
//  customCellDemo0117
//
//  Created by Amy Giver on 1/18/17.
//  Copyright © 2017 Amy Giver Squid. All rights reserved.
//

import UIKit

class BirdCell: UITableViewCell {
    weak var delegate: ShowBirdDelegate?
    
    @IBOutlet weak var birdLabel: UILabel!
    
    @IBOutlet weak var birdImage: UIImageView!
    
    @IBOutlet weak var birdButton: UIButton!
    
    @IBAction func birdButtonPressed(_ sender: UIButton) {
        print("Bird button was pressed!")
        delegate?.birdButtonWasPressed(by: self)
    }
    
    
    
    
    
}
