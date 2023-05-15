//
//  ThirdViewController.swift
//  TaskOne
//
//  Created by Олександр Федоренко on 11.05.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        redViewAdjust()
        greenViewAdjust()
        yellowViewAdjust()
    }

    func yellowViewAdjust() {
        let yellowView = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 200))
        yellowView.backgroundColor = UIColor(red: 255, green: 204, blue: 0, alpha: 1 )
        view.addSubview(yellowView)
        yellowView.center = view.center
        yellowView.layer.cornerRadius = 100
        yellowView.alpha = 0.1
    }

    func redViewAdjust() {
        let redView = UIView(frame: CGRect(x: 200, y: 250, width: 200, height: 200))
        redView.backgroundColor = .red
        view.addSubview(redView)
        redView.layer.cornerRadius = 100
    }

    func greenViewAdjust() {
        let greenView = UIView(frame: CGRect(x: 0, y: 400, width: 200, height: 200))
        greenView.backgroundColor = UIColor(red: 0.203921568627451, green: 0.776470588235294, blue: 0.349019607843137, alpha: 1.0 )
        view.addSubview(greenView)
        greenView.layer.cornerRadius = 100
    }
}
