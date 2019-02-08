//
//  ToDoListDataModel.swift
//  SimpleToDoList
//
//  Created by JustinCaty on 2/7/19.
//  Copyright © 2019 Justin Gluck. All rights reserved.
//

import Foundation

class ToDoListDataModel {
    
    var toDoItem: String
    var isItemComplete: Bool = false
    
    init(taskItem: String) {
        toDoItem = taskItem
    }
    
}


