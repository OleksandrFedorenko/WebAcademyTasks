//
//  ViewController.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 22.05.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var genresRequestResult = GenresStruct(genres: [])
    var trendsRequestResult = TrendsStruct(page: nil, results: nil, total_pages: nil, total_results: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        APIHandler.sharedInstance.genresRequest { result in
            self.genresRequestResult = result
        }
        APIHandler.sharedInstance.trendsRequest { result in
            self.trendsRequestResult = result
        }
    }
    
    @IBAction func genresButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "genresSegue", sender: self)
    }

    @IBAction func trendsButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "trendsSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "genresSegue"{
            if let destinationVC = segue.destination as? GenresViewController{
                destinationVC.passedData = genresRequestResult
            }else{
                print("error")
            }
        }else if segue.identifier == "trendsSegue"{
            if let destinationVC = segue.destination as? TrendsViewController{
                destinationVC.passedData = trendsRequestResult
            }
        }else{
            print("incorrect segue identifire!")
        }
    }
}

