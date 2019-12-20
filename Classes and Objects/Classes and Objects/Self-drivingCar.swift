//
//  Self-drivingCar.swift
//  Classes and Objects
//
//  Created by Hiram Rios on 8/20/19.
//  Copyright © 2019 Hiram Rios. All rights reserved.
//

import Foundation
class SelfDrivingCar: Car{
    
    var destination: String?
    override func drive(){
       // super.drive()
        print("driving towards " + destination!)
    }
    
}
