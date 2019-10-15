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
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
