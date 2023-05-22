//
//  SecondViewController.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 15.05.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var runButton: UIButton!
    @IBOutlet weak var ballView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        ballView.layer.cornerRadius = 50
    }
    override func viewDidAppear(_ animated: Bool) {
        runButton.isEnabled = true
        ballView.alpha = 1
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [.calculationModeLinear]) {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5) {
                self.ballView.frame.origin = CGPoint(x: 50, y: 200)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                self.ballView.frame.origin = CGPoint(x: UIScreen.main.bounds.width + 100, y: 0)
            })
        } completion: { _ in
            UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseOut], animations: {
                self.ballView.alpha = 0.0
            },completion: { _ in
                self.runButton.isEnabled = false
            })
        }
    }
    
}
