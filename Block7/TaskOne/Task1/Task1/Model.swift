//
//  Model.swift
//  Task1
//
//  Created by Олександр Федоренко on 22.05.2023.
//

import Foundation

struct Company: Codable {
    let count: Int
    let companyDescription: String
    let listOfData:[Device]
}

struct Device: Codable {
    let name: String
    let modelNumber: String
    let countries: [String]
    let price: PriceInfo
    let year: Int
}

struct PriceInfo: Codable {
    let regions: [RegionPrice]
}

struct RegionPrice: Codable {
    let name: String
    let price: Int
}
