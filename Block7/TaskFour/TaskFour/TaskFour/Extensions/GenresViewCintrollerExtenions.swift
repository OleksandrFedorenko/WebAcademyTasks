//
//  GenresViewCintrollerExtenions.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 23.05.2023.
//

import Foundation
import UIKit

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
