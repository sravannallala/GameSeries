//
//  playerDetailsViewController.swift
//  GameSeries
//
//  Created by sree on 04/03/20.
//  Copyright © 2020 sravan. All rights reserved.
//

import UIKit

class playerDetailsViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var character: UILabel!
    
    
    @IBOutlet weak var gameSeries: UILabel!
    
    
    
    @IBOutlet weak var amiiboSeries: UILabel!
    
    
    
    
    
    
    var player = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.sd_setImage(with: URL(string: self.player.image ?? ""), placeholderImage: nil)
        self.name.text = player.name
        self.character.text = player.character
        self.gameSeries.text = player.gameSeries
        self.amiiboSeries.text = player.amiiboSeries
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
