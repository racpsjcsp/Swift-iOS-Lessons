//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Rafael Plinio on 15/10/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String] //changed to a [String] to make the multiple choice questions work
    let correctAnswer: String //added to make the multiple choice questions work
    
    init(q: String, a: [String], ca: String) {
        text = q
        answer = a
        correctAnswer = ca
    }
}
