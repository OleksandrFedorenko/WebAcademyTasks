//
//  MenuBlock.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 16.05.2023.
//

import UIKit


protocol ButtonSelectionDelegate {
    func menuElementPressed()
}

class MenuBlock: UIView {
    
    @IBOutlet var menuView: UIView!
    @IBOutlet weak var iamgeView: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var labelMenuBlock: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var delegate: ButtonSelectionDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        Bundle.main.loadNibNamed("MenuBlock", owner: self, options: nil)
        menuView.fixInView(self)
    }

    func blockConfiguration(labelText: String, imageSysName: String, color: UIColor) {
        mainView.layer.cornerRadius = 15
        iamgeView.layer.cornerRadius = 25
        imageView.tintColor = .white
        iamgeView.backgroundColor = color
        labelMenuBlock.text = labelText
        imageView.image = UIImage(systemName: imageSysName)
    }
}

