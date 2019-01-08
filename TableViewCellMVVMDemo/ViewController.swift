//
//  ViewController.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2018-12-25.
//  Copyright © 2018 CIBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var firstTableView: UITableView!
	@IBOutlet weak var secondTableView: UITableView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		firstTableView.delegate = self
		firstTableView.dataSource = self
		
		secondTableView.delegate = self
		secondTableView.dataSource = self
	}
	
	func getMyTableViewCellFrom(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
		
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as? MyTableViewCell else { return UITableViewCell()}
		
		return cell
	}
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		 return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		switch tableView {
		case firstTableView:
			return 2
		case secondTableView:
			return 3
		default:
			return 0
		}
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		switch tableView {
		case firstTableView:
		
			guard let cell = getMyTableViewCellFrom(tableView: firstTableView, indexPath: indexPath) as? MyTableViewCell else { return UITableViewCell()}
			
			guard let percy = UIImage(named: "percy") else { return UITableViewCell() }
			
			cell.myImageView.image = percy
			cell.someTextLabel.text = "First Table Cells"
			
			return cell
		case secondTableView:
			
			guard let cell = getMyTableViewCellFrom(tableView: firstTableView, indexPath: indexPath) as? MyTableViewCell else { return UITableViewCell()}
			
			guard let cibc = UIImage(named: "CIBCImage") else { return UITableViewCell() }
			
			cell.myImageView.image = cibc
			cell.someTextLabel.text = "Second Table Cells"
			
			return cell
		default:
			return UITableViewCell()
		}
	}
	
}

