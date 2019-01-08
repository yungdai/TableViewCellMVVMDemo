//
//  MasterTableDataSource.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2018-12-25.
//  Copyright © 2018 CIBC. All rights reserved.
//

import UIKit

class MasterTableDataSource: NSObject, UITableViewDelegate {
	
	var rows: Int = 0
	var image: UIImage = UIImage()
	var label: String?
	
	override init() {
		super.init()
	}

	required init(rows: Int = 0, image: UIImage = UIImage()) {
	
		self.rows = rows
		self.image = image
	}
	
	func labelRows(text: String) {
		
		label = text
	}
}


extension MasterTableDataSource: UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return rows
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as? MyTableViewCell else { return UITableViewCell()}
		
		cell.myImageView.image = image
		
		if let text = label {
			
			cell.someTextLabel.text = text
		}
		
		return cell
	}
}
