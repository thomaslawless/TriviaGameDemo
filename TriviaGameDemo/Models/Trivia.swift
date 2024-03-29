//
//  Trivia.swift
//  TriviaGameDemo
//
//  Created by Thomas Lawless III on 7/25/22.
//

import Foundation

struct Trivia: Decodable {
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID {
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        var formattedQuestion: AttributedString{
            do{
                return try AttributedString(markdown: question)
            }catch{
                print("error setting FormattedQuestion: \(error)")
                return ""
            }
        }
        
        var answers: [Answer]{
            do {
                let correct = [Answer(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrects = try incorrectAnswers.map {answer in
                    Answer(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                
                let allAnswers = correct + incorrects
                return allAnswers.shuffled()
                
            }catch {
                print("error setting answers \(error)")
                return []
            }
        }
        
    }
}
