//
//  FavoriteTableViewCell.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {

    //Outlet
  
    @IBOutlet weak var favoriteProductImage: UIImageView!
    @IBOutlet weak var nameOfFavoritePrductLabel: UILabel!
    @IBOutlet weak var priceFavoriteProductLabel: UILabel!
    
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    
    // Variable
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func buyTapButton(_ sender: Any) {
    }
    
    @IBAction func deleteTapButton(_ sender: Any) {
    }
    
}
