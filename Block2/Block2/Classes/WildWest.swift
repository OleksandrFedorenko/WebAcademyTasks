//
//  WildWest.swift
//  Block2
//
//  Created by Олександр Федоренко on 08.05.2023.
//

import Foundation

// MARK: TASK - 7
//MARK: PROTOCOLS
protocol Movable{
    func run()
}

protocol Fightable{
    func fight()
}

protocol Hero: Movable, Fightable{
    var name:String {get set}
}

//MARK: STRUCTS
struct Farmer: Movable {
    func run() {
        print("Farmer: i got feard !!! i am running away!!")
    }
}

struct Waitress: Movable{
    func run() {
        print("Waitress: Running away , searching place to hide")
    }
}

struct Butcher: Fightable {
    func fight() {
        print("Butcher: I am gonna fight to protect my tavern!")
    }
}

struct Drunkard: Fightable{
    func fight() {
        print("Drunkard: Who are you, lets fight!")
    }
}

struct Cowboy1: Hero{
    var name: String
    
    func run() {
        print("Cowboy1 - \(name): Charge into the battle!!!")
    }
    
    func fight() {
        print("Cowboy1 - \(name): Hands up it's a robbery!")
    }
}

struct Cowboy: Hero {
    var name: String
    
    func run() {
        print("Сowboy - \(name): Сowboys don't run, we shoot ")
    }
    
    func fight() {
        print("Сowboy - \(name): Hands up it's a robbery!")
    }
}

// MARK: TASK - 9
class Tavern {

    var fighters:[Fightable]
    var movers:[Movable]
    
    init(fighters: [Fightable], movers: [Movable]) {
        self.fighters = fighters
        self.movers = movers
    }

    func enterTavern(hero: Hero) {
        hero.fight()
        for item in movers{
            item.run()
        }
        for item in fighters{
            item.fight()
        }
    }
}
