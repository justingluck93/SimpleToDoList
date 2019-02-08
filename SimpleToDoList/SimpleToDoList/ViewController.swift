//
//  ViewController.swift
//  SimpleToDoList
//
//  Created by Justin Gluck on 2/6/19.
//  Copyright © 2019 Justin Gluck. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var items = [ToDoListDataModel(taskItem: "Fish"), ToDoListDataModel(taskItem: "Human"), ToDoListDataModel(taskItem: "Dog")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CheckList"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  items.count

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoItem", for: indexPath)
        
        let item  = items[indexPath.row]
        
        cell.textLabel?.text = item.toDoItem
        cell.accessoryType = item.isItemComplete ? .checkmark : .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item  = items[indexPath.row]
        item.isItemComplete = !item.isItemComplete
        tableView.reloadData()
    }
}

