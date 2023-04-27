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
        //task5()
        //task6_7()
        task8()
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
    
    /* Task 6, 7 - Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами из четвертого задания.
     С помощью цикла от 1970 до 2022 задайте значения для словаря. В качестве ключа пусть будет год, а значение это массив с месяцами.
     С помощью другого цикла добавьте в calendar на каждый год по одному месяцу с вашим названием, чтобы в каждом году вышло 13 месяцев.*/
    
    func task6_7() {
        var calendar:[Int: [String]] = [:]
        let arr: [String] = ["January", "February", "March", "April", "May", "June", "July", "August", "September","October", "November", "December"]
        for i in 1970...2022{
            calendar[i] = arr
        }
        for i in calendar{
            calendar[i.key]?.append("YOBANA_rusNYA")
        }
        print(calendar)
    }
    
    /* Task 8 - На основании словаря, который у вас получился в седьмом задании, давайте создадим новый словарь, который будет включать в себя также и даты, a именно массив с числами от 1 до 31:
     ● Создайте массив с числами от 1 до 31 с помощью цикла.
     ● Создайте новый словарь calendarPro, где в качестве ключей будут года, в качестве
     значений вложенные словари. В которых в качестве ключей названия месяцев, а в
     качестве значений массив с днями созданный выше.
     ● Выведите в консоль 1 сентября 2019 года.
     PS: Для заполнения calendarPro используйте только созданный массив с числами, и словарь с месяцами, и никаких других данных*/
    func task8() {
        var arr:[Int] = []
        for i in 1...31{
            var arr = arr.append(i)
        }
        var calendarPro:[Int:[String:[Int]]] = [:]
        print(arr)
        //next will be tomorrow
    }
}

