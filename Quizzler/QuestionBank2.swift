//
//  QuestionBank2.swift
//  Quizzler
//
//  Created by Allen Liu on 8/28/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank2 {
    
    var list = [Question]()
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Vincent is as handsome as Lihong.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "Vincent like coding and studying.", correctAnswer: true))
        
        list.append(Question(text: "Vincent is 19 years old.", correctAnswer: false))
        
        list.append(Question(text: "Vincent cannot eat hot food.", correctAnswer: false))
        
        list.append(Question(text: "Vincent is no more than 178 inches tall.", correctAnswer: false))
        
        list.append(Question(text: "If you like Vincent, Vincent will like you back.", correctAnswer: true))
        
        list.append(Question(text: "It is stupid to argue with Vincent.", correctAnswer: true))
        
        list.append(Question(text: "You can give gifts to Vincent on holidays.", correctAnswer: true))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Question(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
        
        
    }
}
