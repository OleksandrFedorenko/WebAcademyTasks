//
//  Extensions.swift
//  Block2
//
//  Created by Олександр Федоренко on 08.05.2023.
//

import Foundation

extension Int{
    func numberToPow(to power: Int) -> Int {
        var result: Int = 1
        for _ in 1...power{
            result = self * result
        }
        return result
    }
}

extension String{
    func isPalindrome() -> Bool {
        let strWithNoSigns = self.lowercased().filter { char in
            return char.isLetter
        }
        if strWithNoSigns == String(strWithNoSigns.reversed()){
            return true
        }else{
            return false
        }
    }
}
