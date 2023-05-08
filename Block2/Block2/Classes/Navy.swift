//
//  Navy.swift
//  Block2
//
//  Created by Олександр Федоренко on 08.05.2023.
//

import Foundation


// MARK: - TASK 1
class Sailor{
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func introduceMyself() {
        print("Привіт, моє ім'я  \(name)")
    }
}

// MARK: - TASK 2
class Ship{
    var shipName: String
    var sailorArray: [Sailor?]
    
    init(shipName: String, sailorArray: [Sailor?]) {
        self.shipName = shipName
        self.sailorArray = sailorArray
    }
    func intoduceAll() {
        for sailor in sailorArray{
            sailor?.introduceMyself()
        }
        print("Ми з \(shipName)")
    }
}

// MARK: - TASK 4
class Titanic: Ship{
    override func intoduceAll() {
        super.intoduceAll()
        for sailor in sailorArray{
            sailor?.introduceMyself()
        }
        print("We are from - \(shipName)")
    }
}
class TitanicSailor: Sailor{
    override func introduceMyself() {
        super.introduceMyself()
        print("Hi, my name is \(name)")
    }
}
