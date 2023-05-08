//
//  ViewController.swift
//  Block2
//
//  Created by Олександр Федоренко on 05.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("************* Task 1 *************")
        let sailor = Sailor(name: "Alex")
        sailor.introduceMyself()
//        print("**********************************")
        
        print("************* Task 2 *************")
        let ship = Ship(shipName: "Black parley", sailorArray: [sailor])
        ship.intoduceAll()
//        print("**********************************")
        
        print("************* Task 3 *************")
        let sailor1 = Sailor(name: "Alex1")
        let sailor2 = Sailor(name: "Alex2")
        let sailor3 = Sailor(name: "Alex3")
        let sailor4 = Sailor(name: "Alex4")
        let sailor5 = Sailor(name: "Alex5")
        let ship2 = Ship(shipName: "Ship2", sailorArray:[sailor1, sailor2, sailor3, sailor4, sailor5])
        ship2.intoduceAll()

        print("************* Task 4 *************")
        let titanicSailor1 = TitanicSailor(name: "Titanic Alex1")
        let titanicSailor2 = TitanicSailor(name: "Titanic Alex2")
        let titanicSailor3 = TitanicSailor(name: "Titanic Alex3")
        let titanicSailor4 = TitanicSailor(name: "Titanic Alex4")
        let titanicSailor5 = TitanicSailor(name: "Titanic Alex5")

        let titanic = Titanic(shipName: "Titanic", sailorArray: [titanicSailor1, titanicSailor2, titanicSailor3, titanicSailor4, titanicSailor5])
        titanic.intoduceAll()
        
        print("************* Task 5 *************")
        let calculator = CalculatorPro()
        print(calculator.sum(firstNumber: 1, secondNumber: 2))
        print(calculator.subtraction(firstNumber: 5, secondNumber: 10))
        print(calculator.multiply(firstNumber: 20, secondNumber: 2))
        print(calculator.divide(firstNumber: 20, secondNumber: 5))
        print(calculator.percentOfNumber(number: 20, percentage: 25))
        print(calculator.power(number: 2, exponent: 4))
        
        print("************* Task 6 *************")
        let principalAmount = 1000.0 // Початкова сума депозиту
        let interestRate = 5.0 // Річна процентна ставка
        let timePeriod = 3.0 // Кількість років
        let superProCalc = SuperProCalc()
        let totalAmount = principalAmount + superProCalc.calculateCompoundInterest(principal: principalAmount, rate: interestRate, time: timePeriod)
        print(totalAmount)

        print("************* Task 10 *************")
        let john = Farmer()
        let alice = Waitress()
        let andy = Butcher()
        let johan = Drunkard()
        let bob = Cowboy1(name: "Bob")
        let jack = Cowboy(name: "Jack")
        let tavern = Tavern(fighters: [andy, johan ], movers: [john, alice])

        tavern.enterTavern(hero: bob)
        tavern.enterTavern(hero: jack)
    }
}






//

