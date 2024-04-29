//
//  WonderTableViewCell.swift
//  WorldWonders
//
//  Created by Дамир Нургалиев on 23.04.2024.
//

import UIKit
import SDWebImage

class RecipesTableViewCell: UITableViewCell {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var flag: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var region: UILabel!
    
    @IBOutlet weak var location: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setData (recipes: WorldRecipes){
        name.text = recipes.name
        region.text = recipes.region
        location.text = recipes.location
        
        picture.sd_setImage(with: URL(string: recipes.picture), completed: nil)
        flag.sd_setImage(with: URL(string: recipes.flag), completed: nil)
    }

}
