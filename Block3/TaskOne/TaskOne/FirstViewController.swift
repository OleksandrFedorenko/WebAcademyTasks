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

        let myView = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 200))
        myView.backgroundColor = UIColor(red: 0.203921568627451, green: 0.776470588235294, blue: 0.349019607843137, alpha: 1.0 )
        view.addSubview(myView)
        myView.center = view.center
        myView.layer.cornerRadius = 100
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
