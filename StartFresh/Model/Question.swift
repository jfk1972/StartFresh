//
//  Question.swift
//
//  Credits to Angela Yu
//  The App Brewery
//
//

import Foundation

struct Question {
    let text: String
   
    //Multiple choice questions array.
    let answers: [String]
    //
    let rightAnswer: String
    
    //The structure initialiser.
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
