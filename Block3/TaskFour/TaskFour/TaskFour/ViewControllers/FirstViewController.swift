//
//  FirstViewController.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 15.05.2023.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var bounceButton: UIButton!
    @IBOutlet weak var ballView: UIView!
    @IBOutlet weak var bottomBallViewConstraint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        ballViewAdjust()
    }
    
    func ballViewAdjust() {
        ballView.layer.cornerRadius = 75
    }

    func animateBall() {
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 4,
                       initialSpringVelocity: 5,
                       options: [.autoreverse, .repeat]) {
            self.bottomBallViewConstraint.constant = -400
            self.view.layoutIfNeeded()
        }
    }

    @IBAction func bounceButtonPressed(_ sender: UIButton) {
        animateBall()
    }
}
