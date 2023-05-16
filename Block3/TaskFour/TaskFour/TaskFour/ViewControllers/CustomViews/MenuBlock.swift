//
//  MenuBlock.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 16.05.2023.
//

import UIKit

class MenuBlock: UIView {
    
    @IBOutlet var menuView: UIView!
    
    @IBOutlet weak var mainView: UIView!
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
    
    func blockConfiguration() {
        mainView.layer.cornerRadius = 15
        print("blockConfiguration")
    }
}
