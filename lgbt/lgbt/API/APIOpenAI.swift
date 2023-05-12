//
//  APIOpenAI.swift
//  Swifties
//
//  Created by Eunice Santos on 11/05/23.
//

import SwiftUI
import ChatGPTSwift

@MainActor
class APIOpenAI: ObservableObject {
    
    let API = ChatGPTAPI(apiKey: api.key)
    @Published var writting = false
    //@Published var messages = testchat
    
    @Published var messages = [
        Message(type: .bot, messageBody: "Hola \(apiConfig.username).  \nSoy \(apiConfig.friendname), ¿Cómo va todo?")
     ]
    @Published var newMessage : String = ""
    
    func sendMessage() async throws {
        
        print("funcion")
        print(newMessage)
        
        messages.append(Message(type: .user, messageBody: newMessage))
        
        
       
        
        writting = true
    
        let aMessage = Message(type: .bot, messageBody: "")
        DispatchQueue.main.async {
            self.messages.append(aMessage)
        }
        let response = try await API.sendMessageStream(text: newMessage,
                                                 model: "gpt-3.5-turbo",
                                                       systemText: "Eres un amigo virtual animal (\(apiConfig.animal.rawValue)) que tiene como proposito ayudar, animar e informar a un usuario LGBT. El usuario se llama \"\(apiConfig.username)\", tú te llamas \"\(apiConfig.friendname)\", los pronombres que el usuario prefiere son \(apiConfig.pronouns.rawValue)",
                                                 temperature: 0.5)
        
        
        newMessage = ""
        for try await stream in response {
            print(stream)
            if let last = messages.last {
                let curr = last.messageBody
                let new = curr + stream
                messages[messages.count-1].messageBody = new
                print(messages[messages.count-1])
                
            }
        }
        
        
        writting = false
        
        
        
        
        
    }
    
}
