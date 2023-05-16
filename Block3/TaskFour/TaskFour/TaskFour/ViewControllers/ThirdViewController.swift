//
//  ThirdViewController.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 15.05.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var topCustomView: TopCustomView!
    @IBOutlet weak var firstMenuBlock: MenuBlock!
    @IBOutlet weak var secondMenuBlock: MenuBlock!
    @IBOutlet weak var thirdMenuBlock: MenuBlock!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstMenuBlock.blockConfiguration()
        secondMenuBlock.blockConfiguration()
        thirdMenuBlock.blockConfiguration()
        topCustomView.topViewConfiguration()
    }
    


}
