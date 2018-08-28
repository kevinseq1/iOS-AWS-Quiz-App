//
//  Question.swift
//  AWS SYSOPS
//
//  Created by KS on 8/27/18.
//  Copyright © 2018 KS. All rights reserved.
//

import Foundation

class Question {
    
    let question: String
    let optionA: String
    let correctAnswer: Int

    
    init(questionText: String, choiceA: String, answer: Int) {
        question = questionText
        optionA = choiceA
        correctAnswer = answer
    }
    
}
