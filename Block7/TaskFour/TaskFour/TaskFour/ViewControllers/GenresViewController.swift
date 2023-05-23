//
//  GenresViewController.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 23.05.2023.
//

import UIKit

class GenresViewController: UIViewController {

    var passedData = GenresStruct(genres: [])
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print(passedData)
        // Do any additional setup after loading the view.
    }

}

extension GenresViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passedData.genres!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = passedData.genres![indexPath.row].name
        return cell
    }
}
