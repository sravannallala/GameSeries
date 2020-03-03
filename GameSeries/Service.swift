//
//  Service.swift
//  GameSeries
//
//  Created by sravan on 3/2/20.
//  Copyright © 2020 sravan. All rights reserved.
//

import Foundation
import Alamofire

class Service{
    
//    https://www.amiiboapi.com/api/amiibo
    fileprivate var gameUrl = ""
    
    typealias playersCallBack = (_ players: [Player]? ,_ status: Bool ,_ message: String) -> Void
    var callBack :playersCallBack?
    
    init(gameUrl:String) {
        self.gameUrl = gameUrl
    }
    
    func getAllPlayerNameFrom(endpoint:String)  {
        AF.request(self.gameUrl ,   method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response {
            (responseData) in
            guard let data = responseData.data else {return}
            do{
                let players = try JSONDecoder().decode(Amiibo.self, from: data)
                
                self.callBack?(players, true ," ")
//                print("players == \(players)")
            } catch {
//                print("Error decoding == \(error)")
                self.callBack?(nil,false,error.localizedDescription)
            }
        }
    }
    
    func completionHandler (callBack: @escaping playersCallBack){
        self.callBack = callBack
    }
}
