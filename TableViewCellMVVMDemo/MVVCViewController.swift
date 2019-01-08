//
//  MVVCViewController.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2018-12-25.
//  Copyright © 2018 CIBC. All rights reserved.
//

import UIKit

class MVVCViewController: UIViewController {
	
	fileprivate var firstTableViewController: MasterTableViewController?
	fileprivate var secondTableViewController: MasterTableViewController?
	
	// tableViewDataSources for the two different tables
	var firstTableViewDataSource: FirstTableDataSource = FirstTableDataSource()
	var secondTableViewDataSource: SecondTableDataSource = SecondTableDataSource()
	var reversedTableViewDataSource: ReversedTableViewCellDataSource = ReversedTableViewCellDataSource()
	
	
	var isReversed = false {
		didSet {

			// The code to swap between the two tableViewDataSources
			if isReversed {
				
				secondTableViewController?.tableView.delegate = reversedTableViewDataSource
				secondTableViewController?.tableView.dataSource =  reversedTableViewDataSource

				secondTableViewController?.tableView.reloadData()

			} else {
				
				secondTableViewController?.tableView.delegate = secondTableViewDataSource
				secondTableViewController?.tableView.dataSource = secondTableViewDataSource

				secondTableViewController?.tableView.reloadData()
			}
		}
	}
	
	// MARK: - Button
	@IBAction func toggleBottomTableButtonPressed(_ sender: Any) {
		isReversed = !isReversed
	}
	
	// MARK: - Navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		// Set up the two different two masterTableVC's containers this is how you will instantiate the two containers with the MasterTableView
		if segue.identifier == "firstTableVC" {
			
			firstTableViewController = segue.destination as? MasterTableViewController
			firstTableViewController?.tableView.delegate = firstTableViewDataSource
			firstTableViewController?.tableView.dataSource = firstTableViewDataSource
		}
		
		if segue.identifier == "secondTableVC" {
			
			secondTableViewController = segue.destination as? MasterTableViewController
			secondTableViewController?.tableView.delegate = secondTableViewDataSource
			secondTableViewController?.tableView.dataSource = secondTableViewDataSource
		}
		
	}
}
