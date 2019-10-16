//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    //@IBOutlet weak var trueButton: UIButton!
    //@IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    //multiple choice buttons
    @IBOutlet weak var buttonLabelA: UIButton!
    @IBOutlet weak var buttonLabelB: UIButton!
    @IBOutlet weak var buttonLabelC: UIButton!
    
    
    
    var quizBrain = QuizBrain()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True, False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        //multiple choice buttons
        buttonLabelA.setTitle(quizBrain.getQuestionAnswersA(), for: .normal)
        buttonLabelB.setTitle(quizBrain.getQuestionAnswersB(), for: .normal)
        buttonLabelC.setTitle(quizBrain.getQuestionAnswersC(), for: .normal)
        
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        buttonLabelA.backgroundColor = UIColor.clear
        buttonLabelB.backgroundColor = UIColor.clear
        buttonLabelC.backgroundColor = UIColor.clear
        
        //trueButton.backgroundColor = UIColor.clear
        //falseButton.backgroundColor = UIColor.clear
    }
}

