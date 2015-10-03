//
//  MyTableViewCell.swift
//  pruebaCarritoAbajo2
//
//  Created by guitarrkurt on 13/07/15.
//  Copyright (c) 2015 guitarrkurt. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
