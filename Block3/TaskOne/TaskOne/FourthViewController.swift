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
        
        let parentView = invisibleViewAdjust()
        redViewAdjust(parentView: parentView)
        yellowViewAdjust(parentView: parentView)
        greenViewAdjust(parentView: parentView)
        blueViewAdjust(parentView: parentView)
    }
    
    func invisibleViewAdjust() -> UIView {
        let invisibleView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        invisibleView.layer.cornerRadius = 150
        view.addSubview(invisibleView)
        invisibleView.center = view.center
        invisibleView.clipsToBounds = true
        
        return invisibleView
    }
    
    func redViewAdjust(parentView: UIView) {
        let redView = UIView(frame: CGRect(x: -30, y: -20, width: 200, height: 200))
        redView.backgroundColor = .red
        parentView.addSubview(redView)
        redView.layer.cornerRadius = 100
    }
    
    func yellowViewAdjust(parentView: UIView) {
        let yellowView = UIView(frame: CGRect(x: 120, y: 0, width: 200, height: 200))
        yellowView.backgroundColor = .yellow
        parentView.addSubview(yellowView)
        yellowView.layer.cornerRadius = 100
    }
    
    func greenViewAdjust(parentView: UIView) {
        let greenView = UIView(frame: CGRect(x: 150, y: 120, width: 200, height: 200))
        greenView.backgroundColor = .green
        parentView.addSubview(greenView)
        greenView.layer.cornerRadius = 100
    }
    
    func blueViewAdjust(parentView: UIView) {
        let blueView = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 200))
        blueView.backgroundColor = .blue
        parentView.addSubview(blueView)
        blueView.layer.cornerRadius = 100
    }
}
