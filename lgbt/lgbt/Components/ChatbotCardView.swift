//
//  ChatbotCardView.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

struct ChatbotCardView: View {
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 375, height: 173)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
            
            HStack(spacing: 25) {
                
                Image("Assistant")
                    .scaleEffect(0.5)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    .frame(width: 125, height: 150)
                
                VStack {
                    
                    Text("Hola, como estas?")
                        .bold()
                        .font(.system(size: 20))
                        .multilineTextAlignment(.leading)
                    
                    Button(action: {
                        
                    }, label: {
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(LinearGradient(gradient: Gradient(colors: [Colors.primaryDark, Colors.primaryLight]), startPoint: .leading, endPoint: .trailing))
                                .frame(width: 150, height: 35)
                            
                            VStack {
                                
                                Text("Hablemos!")
                                    .foregroundColor(.white)
                                    .bold()
                                
                            } // -> VStack
                            
                        } // -> ZStack
                        
                    }) // -> Button
                    
                } // -> VStack
                
            } // -> HStack
            
        } // -> ZStack
        
    } // -> body
    
} // ChatbotCardView

struct ChatbotCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChatbotCardView()
    }
}
