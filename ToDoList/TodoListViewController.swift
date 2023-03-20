//
//  ViewController.swift
//  ToDoList
//
//  Created by Artem Polozhentsev on 20.03.2023.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Work", "Sleep", "Study"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}

