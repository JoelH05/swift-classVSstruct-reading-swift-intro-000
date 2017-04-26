//: Playground - noun: a place where people can play

import UIKit


class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
//fred.homePlanet = "Mars" this line of code will not run because homePlanet is a let connstant and constant cannot are not mutable. To have this work you would need to change homePlanet from a constant to a variable and you accomplish this by changing the let to a var.
fred.homePlanet = "Mars"


//Question 3

struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

// No these three lines of codes will not work because bilbo is a constant change it to a var.

//Question 5

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"

edgar.name
jason.name

//The value of edgar.name and jason.name is Jason because Giant is a class which is a reference type.

// Question 6

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"

charles.homePlanet
charlesFromJupiter.homePlanet

//The value of charles.homePlanet and charlesFromJupiter.homePlanet is Pluto and Jupiter respectively because Alien is a struct which is a value type.

// Question 7 & Question 8

struct BankAccount {
    
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

// The original code didn't work because balance was immutable to change you put mutating in front of func to make the methods mutable.

// Question 9

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)


joeAccount.balance
joeOtherAccount.balance

//The value of joeAccount.balance and joeOtherBalance is 50 and 100 respectively because BankAccount is a struct which is a value type.

// Question 10

class MusicLibrary {
    
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

library1.tracks
library2.tracks

//The contents of library1 and library2 are the exactly the same because MusicLibrary is a class which is a reference type.

