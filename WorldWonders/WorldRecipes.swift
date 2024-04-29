//
//  WorldWonder.swift
//  WorldWonders
//
//  Created by Дамир Нургалиев on 23.04.2024.
//

import Foundation
import SwiftyJSON

struct WorldRecipes {
    var name = " "
    var region = " "
    var location = " "
    var picture = " "
    var flag = " "
    var detail = " "
    
    init (json: JSON){
        if let item = json["name"].string{
            name = item
        }
        if let item = json["region"].string{
            region = item
        }
        if let item = json["location"].string{
            location = item
        }
        if let item = json["picture"].string{
            picture = item
        }
        if let item = json["flag"].string{
            flag = item
        }
        if let item = json["detail"].string{
            detail = item
        }
    }
}



