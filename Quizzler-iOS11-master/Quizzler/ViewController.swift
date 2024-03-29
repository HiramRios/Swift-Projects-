//
//  ViewController.swift
//  Quizzler
//
// Hiram Rios 8/13/19
//  Copyright (c) Hiram Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score : Int = 0
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "score: \(score)"
        progressLabel.text = "\(questionNumber+1)/13"
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(questionNumber+1)
    }
    

    func nextQuestion() {
        if questionNumber <=  (allQuestions.list.count-1){
            
        
        questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else{
         let alert = UIAlertController(title: "end of question", message: "you finished all the questions would you wish to start all over? ", preferredStyle: .alert)
       
            let restartAction = UIAlertAction(title: "start Again", style: .default) { (UIAlertAction) in
                self.startOver()
            }
        alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        }
    

    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            ProgressHUD.showSuccess("Correct")
            score += 1
            
        }
        else{
            ProgressHUD.showError("Wrong!!!")
        }
    }
    
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
       
    }
    

    
}
