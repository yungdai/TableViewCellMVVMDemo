//
//  ReversedTableViewCell.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2019-01-08.
//  Copyright © 2019 CIBC. All rights reserved.
//

import UIKit

class ReversedTableViewCell: UITableViewCell {
	
	@IBOutlet weak var myImageView: UIImageView!
	@IBOutlet weak var someTextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
