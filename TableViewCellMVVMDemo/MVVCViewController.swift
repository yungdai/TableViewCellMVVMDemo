//
//  MVVCViewController.swift
//  TableViewCellMVVMDemo
//
//  Created by Yung Dai on 2018-12-25.
//  Copyright © 2018 CIBC. All rights reserved.
//

import UIKit

class MVVCViewController: UIViewController {

	@IBOutlet weak var firstTableViewContainer: UIView!
	@IBOutlet weak var secondTableViewContainer: UIView!
	
	fileprivate var firstTableViewController: MasterTableViewController?
	fileprivate var secondTableViewController: MasterTableViewController?
	
	lazy var firstTableViewDataSource: MasterTableDataSource? = {
		
		guard let image = UIImage(named: "percy") else { return nil}
		
		let dataSource = MasterTableDataSource(rows: 2, image: image)
		
		return dataSource
	}()
	
	lazy var secondTableViewDataSource: MasterTableDataSource? = {
		
		guard let image = UIImage(named: "CIBCImage") else { return nil}
		
		let dataSource = MasterTableDataSource(rows: 3, image: image)
		
		return dataSource
	}()
	
	override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		// Set up the two different two masterTableVC's containers this is how you will instantiate the two containers with the MasterTableView
		if segue.identifier == "firstTableVC" {
			
			firstTableViewController = segue.destination as? MasterTableViewController
			
			if let dataSource = firstTableViewDataSource {
				firstTableViewController?.masterTableDataSource = dataSource
				dataSource.labelRows(text: "First Table's Cells")
			}
		}
		
		if segue.identifier == "secondTableVC" {
			
			secondTableViewController = segue.destination as? MasterTableViewController
			
			if let dataSource = secondTableViewDataSource {
				secondTableViewController?.masterTableDataSource = dataSource
				
				dataSource.labelRows(text: "Second Table's Cells")
			}
		}


    }


}
