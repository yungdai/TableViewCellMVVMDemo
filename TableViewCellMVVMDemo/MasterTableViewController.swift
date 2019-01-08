//
//  MasterTableViewController.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2018-12-25.
//  Copyright © 2018 CIBC. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {

	@IBOutlet var masterTableDataSource: MasterTableDataSource?

	override func viewDidLoad() {
        super.viewDidLoad()
		
		self.tableView.delegate = masterTableDataSource
		self.tableView.dataSource = masterTableDataSource
		tableView.reloadData()
    }
}
