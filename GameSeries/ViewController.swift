//
//  ViewController.swift
//  GameSeries
//
//  Created by sravan on 3/2/20.
//  Copyright © 2020 sravan. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var labelPlayer: UITableView!
    var players:Amiibo?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
       
        let service = Service(gameUrl:
        "https://www.amiiboapi.com/api/amiibo")
        
        service.getAllPlayerNameFrom(endpoint:"all")
        service.completionHandler{ (players, status, message) in
            if status{
                guard let _players = players else {return}
//                print(players)
                self.players = _players
                self.labelPlayer.reloadData()
            }
        }

    }
    
}

extension ViewController : UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (players?.amiibo.count) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "PlayerTableViewCell") as! PlayerTableViewCell
        
        let Player = players?.amiibo[indexPath.row]
        
        cell.name.text = Player?.name ?? " "
        cell.gameseries.text = Player?.gameSeries ?? ""
        cell.imageview.sd_setImage(with: URL(string: Player?.image ?? ""), placeholderImage: nil)
//        cell?.detailTextLabel?.text = Amiibo.head ?? ""
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Player = players?.amiibo[indexPath.row]
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "playerDetailsViewController") as! playerDetailsViewController
        vc.player = Player!
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
   
}

