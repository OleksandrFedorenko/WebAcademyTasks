//
//  GeometricShapes.swift
//  Block2
//
//  Created by Олександр Федоренко on 08.05.2023.
//

import Foundation

protocol GeometricFormulas {

    func countArea() -> Double
    func countPerimetr() -> Double
}

struct Square: GeometricFormulas{
    var sideLength: Double
    
    init(sideLength: Double) {
        self.sideLength = sideLength
    }
    
    func countArea() -> Double {
        return sideLength * sideLength
    }

    func countPerimetr() -> Double {
        return sideLength * 4
    }
}

struct Triangular: GeometricFormulas {

    var base: Double
    var height: Double
    var sideA: Double
    var sideB: Double
    
    func countArea() -> Double{
        return 0.5 * base * height
    }

    func countPerimetr() -> Double{
        return base + sideA + sideB
    }
}

struct Circle: GeometricFormulas {
    
    var radius: Double
    let π = Double.pi

    func countArea() -> Double {
        return π * (radius * radius)
    }

    func countPerimetr() -> Double {
        return 2 * π * radius
    }
}



