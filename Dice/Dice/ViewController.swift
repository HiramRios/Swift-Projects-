//
//  ViewController.swift
//  Dice
//
//  Created by Hiram Rios on 8/9/19.
//  Copyright © 2019 Hiram Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    let diceArray = ["dice1", "dice2","dice3","dice4","dice5", "dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }


    @IBAction func rollButtonPress(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
       // print(randomDice1)
        diceImageView1.image = UIImage(named: diceArray[randomDice1])
        diceImageView2.image = UIImage(named: diceArray[randomDice2])

        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

