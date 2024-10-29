//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
   
        let quiz: [Story] = [
            Story(
                question: "What is Luffy's Devil Fruit ability?",
                options: ["Gomu Gomu no Mi", "Hana Hana no Mi"],
                correctAnswer: "Gomu Gomu no Mi"
            ),
            Story(
                question: "Who was the first crewmate to join Luffy?",
                options: ["Zoro", "Nami"],
                correctAnswer: "Zoro"
            ),
            Story(
                question: "Which sea is Luffy originally from?",
                options: ["East Blue", "West Blue"],
                correctAnswer: "East Blue"
            ),
            Story(
                question: "What is the name of the island where Luffy grew up?",
                options: ["Fuschia Village", "Loguetown"],
                correctAnswer: "Fuschia Village"
            ),
            Story(
                question: "Who gave Luffy his iconic straw hat?",
                options: ["Shanks", "Rayleigh"],
                correctAnswer: "Shanks"
            ),
            Story(
                question: "Which pirate has the epithet 'Surgeon of Death'?",
                options: ["Law", "Kid"],
                correctAnswer: "Law"
            ),
            Story(
                question: "Who is the captain of the Heart Pirates?",
                options: ["Law", "Killer"],
                correctAnswer: "Law"
            ),
            Story(
                question: "What is Nami's dream?",
                options: ["To draw a map of the world", "To find One Piece"],
                correctAnswer: "To draw a map of the world"
            ),
            Story(
                question: "What is Zoro's goal?",
                options: ["To become the world's greatest swordsman", "To defeat Shanks"],
                correctAnswer: "To become the world's greatest swordsman"
            ),
            Story(
                question: "Which member of the Straw Hat crew has the power of the Soul-Soul Fruit?",
                options: ["Brook", "Franky"],
                correctAnswer: "Brook"
            )
        ]
        
    
        var currentQuestion = 0;
        var score = 0;
        
        //showing question to user
        func showQuestion()->String{
            return quiz[currentQuestion].question
        }
        
        //showing options to user
        func showOptions()->[String]{
        return quiz[currentQuestion].options
        }
    
        //showing nextQuestion
        mutating func nextQuestion(){
            if(currentQuestion<quiz.count-1){
                currentQuestion += 1
            }else{
                currentQuestion = 0
                score = 0 
            }
        }
        
        //checking answer
        mutating func checkAnswer(userAnswer:String)->Bool{
            if(quiz[currentQuestion].correctAnswer == userAnswer){
                return true
            }else{
                return false
            }
        }
    
   
        
    }
    

