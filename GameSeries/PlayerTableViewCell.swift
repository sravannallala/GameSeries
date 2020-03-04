//
//  PlayerTableViewCell.swift
//  GameSeries
//
//  Created by sree on 04/03/20.
//  Copyright © 2020 sravan. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var imageview: UIImageView!
    
    
    @IBOutlet weak var name: UILabel!
    
    
    @IBOutlet weak var gameseries: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
