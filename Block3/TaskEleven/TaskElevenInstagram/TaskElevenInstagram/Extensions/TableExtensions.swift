//
//  TableExtensions.swift
//  TaskElevenInstagram
//
//  Created by Олександр Федоренко on 17.05.2023.
//

import UIKit

extension ViewController: UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as? PostTableViewCell else { return UITableViewCell()}
        cell.postImage.image = UIImage(named: dataSourceArray[indexPath.row].postImageName)
        cell.avatarImage.image = UIImage(named: dataSourceArray[indexPath.row].avatarImageName)
        
        return cell
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
}
