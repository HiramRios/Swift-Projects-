//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
 
    
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let  soundArray =  ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
        var url: URL!
        
        if sender.tag == 1 {
             url = Bundle.main.url(forResource: soundArray[0], withExtension: "wav")!
        }
        else if sender.tag == 2{
              url = Bundle.main.url(forResource: soundArray[1], withExtension: "wav")!
        }
        else if sender.tag == 3{
             url = Bundle.main.url(forResource: soundArray[2], withExtension: "wav")!
        }
        
        else if sender.tag == 4{
             url = Bundle.main.url(forResource: soundArray[3], withExtension: "wav")!
        }
        else if sender.tag == 5{
             url = Bundle.main.url(forResource: soundArray[4], withExtension: "wav")!
        }
        else if sender.tag == 6{
             url = Bundle.main.url(forResource: soundArray[5], withExtension: "wav")!
        }
        else {
           url = Bundle.main.url(forResource: soundArray[6], withExtension: "wav")!
        }
        
        
        
        
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
    
    func  playSound(){
        var url: URL!
        
         url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        
    
    }
   
  

}


