//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let question: String
    let correctAnswer: String
    let options: [String]
    
    init(question: String, options: [String], correctAnswer: String ) {
        self.question = question
        self.correctAnswer = correctAnswer
        self.options = options
    }
    
}
