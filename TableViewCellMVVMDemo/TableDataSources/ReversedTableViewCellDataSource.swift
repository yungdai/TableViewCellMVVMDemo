//
//  ReversedTableViewCellDataSource.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2019-01-08.
//  Copyright © 2019 CIBC. All rights reserved.
//

import UIKit

class ReversedTableViewCellDataSource: NSObject, UITableViewDelegate {
	
	var rows: Int = 0
	var image: UIImage = UIImage()
	var label: String?

	override init() {
		super.init()
		self.rows = 4
		let image = UIImage(named: "CIBCImage")
		self.image = image ?? UIImage()
		self.label = "Reversed Layout Table's Cells"
	}
}

extension ReversedTableViewCellDataSource: UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return rows
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCellReverse", for: indexPath) as? ReversedTableViewCell else { return UITableViewCell()}
		
		cell.myImageView.image = image
		
		if let text = label {
			cell.someTextLabel.text = text
		}

		return cell
	}
}
