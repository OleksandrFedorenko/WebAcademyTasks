//
//  FourthViewController.swift
//  TaskOne
//
//  Created by Олександр Федоренко on 11.05.2023.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let invisivleView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        invisivleView.layer.cornerRadius = 150
        view.addSubview(invisivleView)
        invisivleView.center = view.center
        invisivleView.clipsToBounds = true
        
        let redView = UIView(frame: CGRect(x: -30, y: -20, width: 200, height: 200))
        redView.backgroundColor = .red
        invisivleView.addSubview(redView)
        redView.layer.cornerRadius = 100
        
        let yellowView = UIView(frame: CGRect(x: 120, y: 0, width: 200, height: 200))
        yellowView.backgroundColor = .yellow
        invisivleView.addSubview(yellowView)
        yellowView.layer.cornerRadius = 100
        
        let greenView = UIView(frame: CGRect(x: 150, y: 120, width: 200, height: 200))
        greenView.backgroundColor = .green
        invisivleView.addSubview(greenView)
        greenView.layer.cornerRadius = 100
        
        let blueView = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 200))
        blueView.backgroundColor = .blue
        invisivleView.addSubview(blueView)
        blueView.layer.cornerRadius = 100
        
        // Do any additional setup after loading the view.
    }
}
