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
    
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstMenuBlock.blockConfiguration(labelText: "Розстрочка на карту", imageSysName: "lirasign", color: UIColor(red: 79/255, green: 161/255, blue: 121/255, alpha: 1))
        secondMenuBlock.blockConfiguration(labelText: "Покупка частинами", imageSysName: "dollarsign", color: UIColor(red: 115/255, green: 96/255, blue: 171/255, alpha: 1))
        thirdMenuBlock.blockConfiguration(labelText: "Архів", imageSysName: "eurosign", color: UIColor(red: 132/255, green: 152/255, blue: 163/255, alpha: 1))
        topCustomView.topViewConfiguration()

  
        
    }
    func gradient() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        
        let color1 = UIColor.green.cgColor
        let color2 = UIColor(displayP3Red: 67, green: 144, blue: 92, alpha: 1.0)
        
        gradientLayer.colors = [color2, color1]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        greenView.layer.addSublayer(gradientLayer)
        greenView.alpha = 1
    }


}
