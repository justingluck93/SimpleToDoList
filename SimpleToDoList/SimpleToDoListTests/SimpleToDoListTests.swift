//
//  SimpleToDoListTests.swift
//  SimpleToDoListTests
//
//  Created by Justin Gluck on 2/6/19.
//  Copyright © 2019 Justin Gluck. All rights reserved.
//

import XCTest
@testable import SimpleToDoList

class SimpleToDoListTests: XCTestCase {

    override func setUp() {
      var mockItems = [ToDoListDataModel(taskItem: "Fish"), ToDoListDataModel(taskItem: "Human"), ToDoListDataModel(taskItem: "Dog")]
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTableViewExists() {
        guard let vc = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateViewController(withIdentifier: "toDoList") as? ViewController else {
            return XCTFail("No ViewController Found") }
        
        vc.loadViewIfNeeded()
        XCTAssertNotNil(vc.tableView)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
