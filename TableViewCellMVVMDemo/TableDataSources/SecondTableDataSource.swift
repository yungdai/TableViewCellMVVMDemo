//
//  SecondTableDataSource.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2018-12-25.
//  Copyright © 2018 CIBC. All rights reserved.
//

import UIKit

class SecondTableDataSource: MasterTableDataSource {

	override init() {
		super.init()
		self.rows = 3
		let image = UIImage(named: "CIBCImage")
		self.image = image ?? UIImage()
		self.label = "Second Table's Cells"
	}
	
	required init(rows: Int, image: UIImage) {
		super.init(rows: rows, image: image)
		self.rows = rows
		self.image = image
	}
}
