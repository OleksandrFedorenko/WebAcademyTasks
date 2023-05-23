//
//  TrendsViewControllerExtensions.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 23.05.2023.
//

import Foundation
import UIKit

extension TrendsViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passedData.results!.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell()
        cell.textLabel?.text = passedData.results![indexPath.row].title
        return cell
    }
}
