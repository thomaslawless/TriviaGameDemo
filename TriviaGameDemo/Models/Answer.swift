//
//  Answer.swift
//  TriviaGameDemo
//
//  Created by Thomas Lawless III on 7/25/22.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID() // each answer created, random ID created with this
    var text: AttributedString
    var isCorrect: Bool
}
