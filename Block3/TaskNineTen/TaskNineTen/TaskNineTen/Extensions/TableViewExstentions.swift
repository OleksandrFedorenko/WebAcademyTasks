//
//  TableViewExstentions.swift
//  TaskNineTen
//
//  Created by Олександр Федоренко on 17.05.2023.
//

import UIKit

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let month = monthArray[indexPath.row]
        let monthNumber = indexPath[1] + 1
        let main = UIStoryboard(name: "Main", bundle: nil)
        if let detailViewController = main.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController{
            navigationController?.pushViewController(detailViewController, animated: true)
            detailViewController.month = month
            detailViewController.numberMonth = monthNumber
        }
        
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monthArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = monthArray[indexPath.row]
        return cell
    }
}
