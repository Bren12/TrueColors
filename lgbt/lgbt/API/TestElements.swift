//
//  TestElements.swift
//  Swifties
//
//  Created by Eunice Santos on 11/05/23.
//

import SwiftUI

// Para el MessageView
var testmessage: Message =
Message(type: .user,
        messageBody: "Hola amigx! ¿Cómo te va?")


//Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec quam at velit finibus vehicula.
var testmessage2 = Message(type: .bot,
        messageBody: "Hola amigx! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec quam at velit finibus vehicula.")


//Para el ChatView, se usa en Message History
var testchat = [

Message(type: .bot,
            messageBody: "Hola amistad! :) \n Soy <nombre>, ¿Cómo va todo?"),
Message(type: .user, messageBody: "No muy bien, la verdad. Me siento un poco triste."),
Message(type: .bot, messageBody: "Lo siento por oír eso. ¿Quieres que hablemos de algo que te haga sentir mejor?"),
Message(type: .user, messageBody: "¡Sí, por favor! Me gustaría algo que me anime un poco."),
Message(type: .bot, messageBody: "¡Genial! Sabes, eres una persona increíblemente fuerte y valiente. No importa lo que esté sucediendo en tu vida en este momento, tienes la capacidad de superarlo. ¡Eres capaz de todo lo que te propongas!"),
Message(type: .user, messageBody: "¡Gracias! Eso es justo lo que necesitaba escuchar."),
Message(type: .bot, messageBody: "¡Me alegro de haberte ayudado! Si alguna vez necesitas más palabras de ánimo, no dudes en preguntarme. ¡Estoy aquí para apoyarte!"),
]
