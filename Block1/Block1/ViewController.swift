//
//  ViewController.swift
//  Block1
//
//  Created by Олександр Федоренко on 27.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //task1()
        //task2()
        //task3()
        //task4()
        task5()
    }
    
    /* Task 1 - Создайте массив с десятью случайными числами, из которых пять меньше нуля и пять больше нуля.
     Замените все отрицательные числа на 0 и выведите массив в консоль*/
    func task1() {
        var arr: [Int] = [1, 2, 3, 4, 5, -1, -2, -3, -4, -5]
        var i = 0
        
        while i < arr.count {
            if arr[i] < 0{
                arr[i] = 0
            }
            i += 1
        }
        print(arr)
    }
    
    /* Task 2 -   Создайте массив с десятью случайными числами, из которых пять меньше нуля и пять больше нуля.
     Найдите минимальный и максимальный элемент в массиве и выведите его в консоль*/
    func task2() {
        let arr: [Int] = [1, 2, 3, 4, 5, -1, -2, -3, -4, -5]
        print("Min - \(arr.min()!), Max - \(arr.max()!)")
    }
    
    /* Task 3 -   Создайте массив с десятью случайными числами, из которых пять меньше нуля и пять больше нуля.
     Найдите сумму элементов массива чисел и выведите ее в консоль*/
    func task3() {
        let arr: [Int] = [1, 2, 3, 4, 5, -1, -2, -3, -4, -5, 2]
        var sum = 0
        
        for i in arr{
            sum += i
        }
        print(sum)
    }
    
    /* Task 4 - Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и с помощью цикла задайте ему
     значения на основании массива: где в качестве ключей будут выступать цифры (индексы), а в качестве значений - элементы массива.*/
    //Check are there any different ways to solve this task
    func task4() {
        let arr: [String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September","October", "November", "December"]
        var dict: [Int:String] = [:]
        for (k, v) in arr.enumerated(){
            dict[k] = v
        }
        print(dict)
    }
    
    /* Task 5 - Создайте словарь:
     var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
     Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый словарь*/
    func task5() {
        var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
        let first = dictionary.first?.value
        dictionary["first"] = dictionary["fourth"]
        dictionary["fourth"] = first
        print(dictionary)
    }
}

