//
//  Car.swift
//  Classes and Objects
//
//  Created by Hiram Rios on 8/19/19.
//  Copyright © 2019 Hiram Rios. All rights reserved.
//

import Foundation

enum CarType{
    case Sedan
    case Coupe
    case HatchBack
}

class Car   {
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar: CarType = .Coupe
    init (){
        
    }
    
    
    
    convenience init(customerChosenColor:String, customerChosenSeats:Int, customerChosenBrand: CarType){
        self.init()
        color = customerChosenColor
        numberOfSeats = customerChosenSeats
        typeOfCar  = customerChosenBrand
        
        
    }
    
    func drive(){
        print("the car is driving")
    }
    
}
