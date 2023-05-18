//
//  ViewController.swift
//  TaskElevenInstagram
//
//  Created by Олександр Федоренко on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    let dataSourceArray:[Post] = Posts.list
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "PostTableViewCell", bundle: nil),
                           forCellReuseIdentifier:  "PostTableViewCell")
        // Do any additional setup after loading the view.
    }
}


