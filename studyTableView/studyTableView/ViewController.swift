//
//  ViewController.swift
//  studyTableView
//
//  Created by Takumi Muraishi on 2019/07/11.
//  Copyright © 2019 Takumi Muraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // tableview instance
    private var tableView: UITableView!
    
    // Array to display tableview
    private var items: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = ["Apple", "Water Melon", "Peach", "Cherry", "Grapes", "pear", "Orange", "aaa"]
        
        // initialize tableview
        tableView = UITableView()
        
        // set delegate
        tableView.delegate = self
        tableView.dataSource = self
        
        // set tableview size
        tableView.frame = view.frame
        
        // set tableview
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self))
        view.addSubview(tableView)
    }
    
    // MARK: tableview delegate methods
    // set the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }      
    
    // set tableview rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(UITableViewCell.self))! as UITableViewCell
        cell.textLabel?.text = self.items[indexPath.row]
        return cell
    }
    
    // called when tableview cell was tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) cell was selected")
    }
}

