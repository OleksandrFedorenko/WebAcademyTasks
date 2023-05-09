//
//  GeometricShapesEnum.swift
//  Block2
//
//  Created by Олександр Федоренко on 09.05.2023.
//

import Foundation

enum SquareEnum: GeometricFormulas {

    case small
    case medium
    case large
    
    var sideLength: Double{
        switch self {
        case .small:
            return 3.0
        case .medium:
            return 6.0
        case .large:
            return 10.0
        }
    }
    
    func countArea() -> Double {
        return sideLength * sideLength
    }
    
    func countPerimetr() -> Double {
        return sideLength * 4
    }
}

enum TriangularEnum {

    case equilateral(sideLength: Double) //рівносторонній
    case isosceles(base: Double, heigth: Double) //рівнобедрений
    case scalene(sideA: Double, sideB: Double, sideC: Double) // різносторонній
    
    var area: Double {
            switch self {
            case .equilateral(let sideLength):
                return (sqrt(3) / 4) * sideLength * sideLength
            case .isosceles(let base, let height):
                return 0.5 * base * height
            case .scalene(let side1, let side2, let side3):
                let semiPerimeter = (side1 + side2 + side3) / 2
                return sqrt(semiPerimeter * (semiPerimeter - side1) * (semiPerimeter - side2) * (semiPerimeter - side3))
            }
        }
        
        var perimeter: Double {
            switch self {
            case .equilateral(let sideLength):
                return 3 * sideLength
            case .isosceles(let base, _):
                return 2 * base
            case .scalene(let side1, let side2, let side3):
                return side1 + side2 + side3
            }
        }
}

enum circleEnum: GeometricFormulas{

    case small
    case medium
    case large
    
    var radius: Double {

        switch self {
        case .small:
            return 3.0
        case .medium:
            return 6.0
        case .large:
            return 10.0
        }
    }

    func countArea() -> Double {
        return Double.pi * (radius * radius)
    }

    func countPerimetr() -> Double {
        return 2 * Double.pi * radius
    }

}
