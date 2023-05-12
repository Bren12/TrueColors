//
//  PopView.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

struct PopView: View {
    
    @Binding var show: Bool
    @Binding var virus: Virus
    
    @State private var date = Date()
    @State private var virusPositive = false
    @State private var virusNegative = false
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack(alignment: .center) {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(gradient: Gradient(colors: [.purple, Colors.primaryLight]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: geo.size.width - 50, height: geo.size.height/2)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                
                VStack {
                    
                    Text(virus.name)
                        .foregroundColor(.white)
                        .font(.system(size: 32, weight: .heavy))
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .frame(width: geo.size.width - 100, height: geo.size.height/3)
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                        
                        VStack(spacing: 30) {
                            
                            HStack {
                                
                                Text("Fecha")
                                    .fontWeight(.bold)
                                
                                DatePicker("", selection: $date)
                                    .accentColor(Colors.primaryDark)
                                
                            } // -> HStack
                            .frame(width: geo.size.width/2)
                            
                            VStack {
                                
                                Text("Resultado")
                                    .fontWeight(.bold)
                                
                                HStack {
                                    
                                    Button(action: {
                                        
                                        virusPositive = !virusPositive
                                        virusNegative = false
                                        
                                    }, label: {
                                        
                                        ZStack {
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(LinearGradient(gradient: Gradient(colors: [virusPositive ? Colors.cardRedDark : .gray, virusPositive ? Colors.cardRedLight : .gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width: 75, height: 75)
                                            
                                            VStack {
                                                
                                                Image(systemName: "plus")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30))
                                                
                                            } // -> VStack
                                            
                                        } // -> ZStack
                                        
                                    }) // -> Button
                                    
                                    Button(action: {
                                        
                                        virusNegative = !virusNegative
                                        virusPositive = false
                                        
                                    }, label: {
                                        
                                        ZStack {
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(LinearGradient(gradient: Gradient(colors: [virusNegative ? Colors.goodDark : .gray, virusNegative ? Colors.goodLight : .gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width: 75, height: 75)
                                            
                                            VStack {
                                                
                                                Image(systemName: "minus")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30))
                                                
                                            } // -> VStack
                                            
                                        } // -> ZStack
                                        
                                    }) // -> Button
                                    
                                } // -> HStack
                                
                            } // -> VStack
                            
                            Button(action: {
                                virus.date = date
                                virus.status = virusPositive
                                show = !(virusPositive || virusNegative)
                            }, label: {
                                
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(LinearGradient(gradient: Gradient(colors: [.purple, Colors.primaryLight]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .frame(width: geo.size.width - 150, height: 50)
                                    
                                    VStack {
                                        
                                        Text("Registrar")
                                            .foregroundColor(.white)
                                            .font(.system(size: 20, weight: .heavy))
                                        
                                    } // -> VStack
                                    
                                } // -> ZStack
                                
                            }) // -> Button
                            
                        } // -> VStack
                        
                    } // -> ZStack
                    
                } // -> VStack
                
            } // -> ZStack
            .frame(width: geo.size.width, height: geo.size.height)
            
        } // -> GeometryReader
        
    } // -> body
    
} // -> PopView

struct PopView_Previews: PreviewProvider {
    static var previews: some View {
        PopView(show: .constant(true), virus: .constant(Virus.ets[0]))
    }
}
