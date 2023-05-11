//
//  ViewController.swift
//  AdditionalTasksForBlock1
//
//  Created by Олександр Федоренко on 10.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(task6())
        print("**********************************************************")
        print(task7())
        print("**********************************************************")
        task8()
        
    }

    func task6() -> [Int:[String]]{

        let arr: [String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September","October", "November", "December"]
        let arrYears: [Int] = Array(2018...2020)

        return arrYears.reduce(into: [:]) { partialResult, value in
            partialResult[value] = arr
        }
    }
    
    func task7() -> [Int:[String]]{
        let arr = task6()
        let monthToAdd = "Test"

        return arr.reduce(into: [:]) { partialResult, dictToAdd in
            let (key, value) = dictToAdd
            partialResult[key] = value + [monthToAdd]
        }
    }
    
    func task8() {
        let dayArr:[Int] = Array(1...31)
        let calendar = task7()
        var calendarPro:[Int:[String:[Int]]] = [:]

        calendarPro = calendar.reduce(into: [:]) { partialResult, value in
            let(year, arrMonths) = value
            let tmpArr = arrMonths.reduce(into: [:]) { partialResult, month in
                partialResult[month] = dayArr
            }
            partialResult[year] = tmpArr
        }
        print("\(calendarPro[2019]!["September"]![0])")
    }
}

