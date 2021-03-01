//
//  HomeTableViewCell.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // Outlet
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var addFaviretButtonTap: UIButton!
    
    @IBOutlet weak var addTapCarButton: UIButton!
    
    
    
    // Variable

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    @IBAction func addCardButton(_ sender: Any) {
    }
    @IBAction func addFaviretButton(_ sender: Any) {
    }
    
}
