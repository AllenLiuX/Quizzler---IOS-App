//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank2()
    var pickedAnswer : Bool = false
    var questionNumber = 0
    var score : Int = 0
    var audioPlayer : AVAudioPlayer!
    var soundFile = ""
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
        }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text  = "Score: \(score)"
        progressLabel.text = "\(questionNumber)/13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
        
        nextQuestion()
    }
    

    func nextQuestion() {
        
        if questionNumber <= 12{
        questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
            
        }
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            print("You got it!")
            
            ProgressHUD.showSuccess("Correct")
            score += 1
            soundFile = "note2"
            playSound()
            
        }
        else {
            print("Wrong!")
            ProgressHUD.showError("Wrong!")
            soundFile = "note1"
            playSound()
        }
    }
    
    
    func startOver() {
        score = 0
        questionNumber = 0
        
        updateUI()
    }
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav")
        
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        
        audioPlayer.play()
        
    }
    
}