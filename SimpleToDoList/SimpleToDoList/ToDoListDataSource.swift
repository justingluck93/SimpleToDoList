//
//  ToDoListDataSource.swift
//  SimpleToDoList
//
//  Created by JustinCaty on 2/8/19.
//  Copyright © 2019 Justin Gluck. All rights reserved.
//

import Foundation
import  UIKit

class ToDoListDataSource: UITableViewDataSource {
    var items = ToDoListDataSource.myData

     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  items.count
        
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoItem", for: indexPath)
        
        let cellTitle = items[indexPath.row]
        cell.textLabel?.text = cellTitle
        
        return cell
    }

}
