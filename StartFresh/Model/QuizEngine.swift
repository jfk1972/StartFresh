//
//  QuizBrain.swift
//
//  Credits to Angela Yu
//  The App Brewery
//
//

import SwiftUI
import UIKit

struct QuizEngine {

    
    

    var score = 0
    var questionNumber = 0
    
    let quiz =
        [
            // Question 1
            Question( q: "Where does Barney live?", a:[ "411 Elm Street", "511 Elm Street", "611 Elm Street"], correctAnswer: "411 Elm Street"),
            Question( q: "Who gave Aunt Bee a broach in the Lost and Found Episode?", a:["Aunt Martha", "Aunt Clara", "Aunt Olive"], correctAnswer: "Aunt Martha"),
            Question( q: "Which comic was Opie reading in the Sermon for Today episode?", a:[ "Cowboy Bill", "Cowboy Bob", "Little Orphan Annie"], correctAnswer:  "Little Orphan Annie"),
            
            
    ]
    
    func getQuestionText() -> String
    {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String]
    {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float
    {
        return Float(questionNumber) / Float(quiz.count)
    }
    //here
    mutating func getCorrectAnswer() -> String
    {
        return quiz[questionNumber].rightAnswer }
    
    mutating func getScore() -> Int {
        return score
    }
    // add -> Void for gameOver screen
    mutating func nextQuestion() -> Void
    {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            //future placeholder to show the users their scores
            yourScore = score
            totalQuestions = quiz.count

            // show score code goes here
//
//            MainViewController.notifyUser(title: "a", message: "b", fromController: MainViewController)
//

            // show score code goes here
            
            
            
            
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    
    
    
}
