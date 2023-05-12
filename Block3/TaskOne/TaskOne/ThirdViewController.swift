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
        
        let yellowView = UIView(frame: CGRect(x: 20, y: 100, width: 200, height: 200))
        yellowView.backgroundColor = UIColor(red: 255, green: 204, blue: 0, alpha: 1 )
        view.addSubview(yellowView)
        yellowView.center = view.center
        yellowView.layer.cornerRadius = 100

        let redView = UIView(frame: CGRect(x: 100, y: -100, width: 200, height: 200))
        redView.backgroundColor = .red
        yellowView.addSubview(redView)
        redView.layer.cornerRadius = 100

        let greenView = UIView(frame: CGRect(x: -100, y: 100, width: 200, height: 200))
        greenView.backgroundColor = UIColor(red: 0.203921568627451, green: 0.776470588235294, blue: 0.349019607843137, alpha: 1.0 )
        yellowView.addSubview(greenView)
        greenView.layer.cornerRadius = 100
        
        
       
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
