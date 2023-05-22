//
//  ViewController.swift
//  Task1
//
//  Created by Олександр Федоренко on 22.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        parse()
    }

    func parse() {
        let filePath = Bundle.main.url(forResource: "RawData", withExtension: "json")!
        do {
            let data = try Data(contentsOf: filePath)
            let decoder = JSONDecoder()
            let allData = try decoder.decode(Company.self, from: data)
            print("Company description - \(allData.companyDescription)")
            print(allData.listOfData.first!.modelNumber)
            print(allData.listOfData.first!.countries.last!)
            print(allData.listOfData.last!.price.regions.first!.name)
            print(allData.listOfData.last!.price.regions.last!.price)
        } catch  {
            print(error)
        }
    }
}

