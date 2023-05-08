//
//  CalculatorBrain.swift
//  Block2
//
//  Created by Олександр Федоренко on 08.05.2023.
//

import Foundation

// MARK: - TASK 5
class Calculator {

    func sum(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber + secondNumber
    }
    
    func subtraction(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber - secondNumber
    }
    
    func multiply(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber * secondNumber
    }
    
    func divide(firstNumber: Int, secondNumber: Int) -> Int{
        return firstNumber / secondNumber
    }
}

class CalculatorPro: Calculator {
    //Чи варто використовувати функції * та / з батьківського класу??? але воно виходить моало читабельним, KISS???
    func percentOfNumber(number: Double, percentage: Double) -> Double{
        return number * (percentage / 100.0)
    }
    
    func power(number: Double, exponent: Double) -> Int {
        return Int(pow(number, exponent))
    }
}
class SuperProCalc: CalculatorPro {

    func calculateCompoundInterest(principal: Double, rate: Double, time: Double) -> Double{
        return principal * pow(1 + rate / 100, time)
    }
}
