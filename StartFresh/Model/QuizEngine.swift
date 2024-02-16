//


//  QuizBrain.swift
//
//  Credits to Angela Yu
//  The App Brewery
//
//

import SwiftUI
import UIKit

var quiz = [""]

struct QuizEngine {
    
    var score = 0
    var questionNumber = 0
    // Define an array of Question instances
        var quiz: [Question] = [
            Question(q: "In the episode that Ellie wanted to get nice things for Frankie, who was Frankie’s neighbor with the three sons?", a: ["Mr. Jenkins", "Mr. Watson", "Mr. Grady"], correctAnswer: "Mr. Jenkins"),
            Question(q: "In the foreclosure episode, how much did Scoby owe Ben Weaver?", a: ["$40.75", "$52.50", "$100.80"], correctAnswer: "$52.50"),
            Question(q: "What was Juanita’s phone number at the diner?", a: ["142R", "217R", "34R"], correctAnswer: "142R"),
            Question(q: "In the milk money episode, which of these was not one of the bullies that harassed Opie and Andy?", a: ["Sheldon", "Hodie", "Billy"], correctAnswer: "Billy")
        ]
        
        // Shuffle the array of questions
        mutating func shuffleQuiz() {
            quiz.shuffle()
        }

        // Retrieve the question text for the current question number
        func getQuestionText() -> String {
            return quiz[questionNumber].text
        }

        // Retrieve the answer choices for the current question number
        func getAnswers() -> [String] {
            return quiz[questionNumber].answers
        }

        // Calculate the progress of the quiz
        func getProgress() -> Float {
            return Float(questionNumber) / Float(quiz.count)
        }

        // Retrieve the correct answer for the current question number
        func getCorrectAnswer() -> String {
            return quiz[questionNumber].rightAnswer
        }

        // Retrieve the current score
        func getScore() -> Int {
            return score
        }

        // Move to the next question
        mutating func nextQuestion() {
            if questionNumber + 1 < quiz.count {
                questionNumber += 1
            } else {
                // Reset the quiz if all questions have been answered
                questionNumber = 0
                score = 0
            }
        }

        // Check if the user's answer is correct
        mutating func checkAnswer(userAnswer: String) -> Bool {
            if userAnswer == quiz[questionNumber].rightAnswer {
                score += 1
                return true
            } else {
                return false
            }
        }

    }
