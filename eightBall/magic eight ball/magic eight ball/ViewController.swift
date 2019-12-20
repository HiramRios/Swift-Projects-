//
//  ViewController.swift
//  magic eight ball
//
//  Created by Hiram Rios on 8/11/19.
//  Copyright © 2019 Hiram Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    var  ballSlot :  Int = 0
    let ballArray = ["ball1" , "ball2", "ball3", "ball4", "ball5"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
     
        // Do any additional setup after loading the view.
    }
    
    
    
    func update(){
        ballSlot = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[ballSlot])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        update()
    }

    @IBAction func text2(_ sender: Any) {
    }
    
    @IBAction func text1(_ sender: Any) {
    }
}

