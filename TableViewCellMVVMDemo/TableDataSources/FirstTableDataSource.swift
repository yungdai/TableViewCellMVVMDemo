//
//  FirstTableDataSource.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2018-12-25.
//  Copyright © 2018 CIBC. All rights reserved.
//

import UIKit

class FirstTableDataSource: MasterTableDataSource {

	override init() {
		super.init()
		self.rows = 2
		let image = UIImage(named: "percy")
		self.image = image ?? UIImage()
		self.label = "Second Table's Cells"
	}
	
	required init(rows: Int, image: UIImage) {
		super.init(rows: rows, image: image)
		self.rows = rows
		self.image = image
	}
}
