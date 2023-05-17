//
//  DetailsViewController.swift
//  TaskNineTen
//
//  Created by Олександр Федоренко on 17.05.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var numberMonthLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!

    var month: String = ""
    var numberMonth: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = month
        numberMonthLabel.text = String(numberMonth)
        // Do any additional setup after loading the view.
    }
}
