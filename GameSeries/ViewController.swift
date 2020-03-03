//
//  ViewController.swift
//  GameSeries
//
//  Created by sravan on 3/2/20.
//  Copyright © 2020 sravan. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var labelPlayer: UITableView!
    var players = [Player]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelPlayer.dataSource = self
        
        let service = Service(gameUrl:
        "https://www.amiiboapi.com/api/amiibo")
        
        service.getAllPlayerNameFrom(endpoint:"all")
        service.completionHandler { [weak, self](palyers, status , message } in
        
       
    }

   
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var  cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell")
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "PlayerCell")
        }
        let Player = players[indexPath.row]
        
        cell?.textLabel?.text = Player.name ?? " " + "(\(Player.gameSeries ?? ""))"
        cell?.detailTextLabel?.text = Player.head ?? ""
        return cell!
    }
    
   
}

