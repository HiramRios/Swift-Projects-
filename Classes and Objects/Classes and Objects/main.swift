//
//  main.swift
//  Classes and Objects
//
//  Created by Hiram Rios on 8/19/19.
//  Copyright © 2019 Hiram Rios. All rights reserved.
//

import Foundation
let wowcar = Car()
let myCar = Car(customerChosenColor: "red", customerChosenSeats: 10, customerChosenBrand: .Sedan )
print(myCar.color)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)
myCar.drive()

let secondCar = SelfDrivingCar()
secondCar.drive()
print(secondCar.color)

