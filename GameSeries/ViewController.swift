//
//  ViewController.swift
//  GameSeries
//
//  Created by sravan on 3/2/20.
//  Copyright © 2020 sravan. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tablPlayers: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let service = Service(gameUrl:
        "https://www.amiiboapi.com/api/amiibo")
        
        service.getAllPlayerNameFrom(endpoint:"all")
    }

   
    
}

