//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Rafael Plinio on 15/10/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
//        Question(q: "A slug's blood is green.", a: "True"),
//        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
//        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
//        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
//        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
//        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
//        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
//        Question(q: "Google was originally called 'Backrub'.", a: "True"),
//        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
//        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
//        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
//        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
        //Multiple Choice Questions
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], ca: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], ca: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], ca: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], ca: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], ca: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], ca: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], ca: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], ca: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], ca: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], ca: "Australia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
       return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    //multiple choice answer A
    func getQuestionAnswersA() -> String {
        return quiz[questionNumber].answer[0] //accessing the multiple choice a (position 0 answer array)
    }
    //multiple choice answer B
    func getQuestionAnswersB() -> String {
        return quiz[questionNumber].answer[1] //accessing the multiple choice b (position 1 answer array)
    }
    
    //multiple choice answer C
    func getQuestionAnswersC() -> String {
        return quiz[questionNumber].answer[2] //accessing the multiple choice c (position 2 answer array)
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / (Float(quiz.count))
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
