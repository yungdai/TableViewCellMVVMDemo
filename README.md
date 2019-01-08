# TableViewCellMVVMDemo
A way to have one master TableVC instead of copying tableViews and Cells


This demo is demonstrate a better way to handle TableViews and TableViewCells.

When creating a view with multiple tableView's the traditional way.  You have to copy tableView's and their prototype cells, you then must write tableView datasource and delegate code in a ViewController.  This can make the ViewController code bloated.

When you want to change a tableViewCell prototype, with the traditional method.  You will need to copy the different updated prototype cell many times into the places where it is used in storybaord.  This creates a greater change of errors, especially when working with a large team.  When you use a one tableView containing one copy of the prototype cell, you have a single source of truth for all tableView cells in the application.

This method also a good for swaping between different tableViewData Sources by simply re-delegating and re-assigning tableViewDataSource to tableViews and then reloadData().
