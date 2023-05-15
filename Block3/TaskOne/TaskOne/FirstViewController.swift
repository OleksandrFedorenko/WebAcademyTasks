//
//  FirstViewController.swift
//  TaskOne
//
//  Created by Олександр Федоренко on 11.05.2023.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        greenViewAdjust()
    }
    
    func greenViewAdjust() {
        let greenView = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 200))
        greenView.backgroundColor = UIColor(red: 0.203921568627451, green: 0.776470588235294, blue: 0.349019607843137, alpha: 1.0 )
        view.addSubview(greenView)
        greenView.center = view.center
        greenView.layer.cornerRadius = 100
    }
}
