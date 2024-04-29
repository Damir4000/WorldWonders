//
//  ViewController.swift
//  WorldWonders
//
//  Created by Дамир Нургалиев on 22.04.2024.
//

import UIKit
import SwiftyJSON
import SVProgressHUD
import Alamofire
class ViewController: UIViewController {
    
    @IBOutlet weak var labelDetailName: UILabel!
    
    @IBOutlet weak var labelDetail: UILabel!
    
    var detailName: String?
    var detaitext: String?
    
    
    
    
    var recipes = [WorldRecipes]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        
        labelDetailName.text = detailName
        labelDetail.text = detaitext
        // Do any additional setup after loading the view.
    }

    func loadData(){
        SVProgressHUD.show()
        AF.request("https://demo8203055.mockable.io/WorldDishes", method:.get).responseJSON { response in
            
            SVProgressHUD.dismiss()
            
            if response.response?.statusCode == 200{
                let json = JSON(response.value!)
                print(json)
                if let resultArray = json.array{
                    for item in resultArray {
                        let recipesItem = WorldRecipes(json: item)
                        self.recipes.append(recipesItem)
                    }
                }
            }
            
        }
    }

}

