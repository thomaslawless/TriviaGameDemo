//
//  Extensions.swift
//  TriviaGameDemo
//
//  Created by Thomas Lawless III on 7/25/22.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View{
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
