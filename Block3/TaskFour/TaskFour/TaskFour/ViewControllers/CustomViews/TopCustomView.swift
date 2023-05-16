//
//  TopCustomView.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 15.05.2023.
//

import UIKit

class TopCustomView: UIView {

    @IBOutlet var topView: UIView!
    @IBOutlet weak var topStackView: UIStackView!
    @IBOutlet weak var usaFlagImage: UIImageView!
    @IBOutlet weak var europeanFlagImage: UIImageView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("TopCustomView", owner: self, options: nil)
        topView.fixInView(self)
    }
    
    func topViewConfiguration() {
//        topStackView.viewWithTag(1)?.layer.opacity = 0.2
//        topStackView.viewWithTag(2)?.layer.opacity = 0.2
    
        // Corner radius for left and right views
        topStackView.viewWithTag(2)?.layer.cornerRadius = 15
        topStackView.viewWithTag(2)?.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        topStackView.viewWithTag(1)?.layer.cornerRadius = 15
        topStackView.viewWithTag(1)?.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        
    }
    
}

extension UIView
{
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
}

