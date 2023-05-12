//
//  Message.swift
//  Swifties
//
//  Created by Eunice Santos on 11/05/23.
//

import Foundation

enum sender {
    case user
    case bot
}

struct Message: Identifiable {
    var id = UUID().uuidString
    var type: sender
    var messageBody: String
    var time: Date
    
    init(type: sender, messageBody: String){
        self.type = type
        self.messageBody = messageBody
        self.time = Date()
    }
}
