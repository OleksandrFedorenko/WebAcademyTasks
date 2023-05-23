//
//  ViewController.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 22.05.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var requestResult = GenresStruct(genres: [])

    override func viewDidLoad() {
        super.viewDidLoad()
        APIHandler.sharedInstance.genresRequest { result in
            self.requestResult = result
            //print(self.requestResult)
        }
        
    }
    
    @IBAction func trendsButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "genresSegue", sender: self)
    }

    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "genresSegue"{
            if let destinationVC = segue.destination as? GenresViewController{
                destinationVC.passedData = requestResult
            }else{
                print("error")
            }
        }
    }
}

