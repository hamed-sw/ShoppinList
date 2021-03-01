//
//  ForDesign.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import UIKit

class MakeRoundShadowView: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.shadowColor = #colorLiteral(red: 0.008058725856, green: 0.2764481008, blue: 0.392970264, alpha: 1)
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
    }
}

class MakeRoundOfButton: UIButton {
    override  func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}
class MakeRoundOfImage: UIImageView {
    override  func awakeFromNib() {
        layer.cornerRadius = 5
    }
}
