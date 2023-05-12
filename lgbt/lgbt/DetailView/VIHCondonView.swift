//
//  VIHCondonView.swift
//  lgbt
//
//  Created by Alberto Estrada on 11/05/23.
//

import SwiftUI

struct VIHCondonView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var changeView: Bool = false
    
    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    
    var body: some View {
        
        if changeView {
            
            MenuView()
            
        } else {
            
            NavigationView {
                
                GeometryReader { geo in
                    
                    ZStack(alignment: .top) {
                        
                        Colors.background
                        
                        ZStack(alignment: .top) {
                            
                            Image("Home")
                                .offset(y: -100)
                            
                            VStack {
                                
                                Text("Uso correcto del condón")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: geo.size.width - 100, height: geo.size.height/10)
                                    .multilineTextAlignment(.center)
                                    .overlay {
                                        
                                        Button(action: {
                                            self.changeView = !self.changeView
                                        }, label: {
                                            
                                            HStack {
                                                
                                                Image(systemName: "arrow.left")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 24))
                                                    .padding()
                                                
                                            } // HStack
                                            
                                        }) // -> Button
                                        .offset(x: -geo.size.width/2.5)
                                        
                                    } // -> Text.overlay
                                
                                Spacer()
                                    .frame(height: geo.size.height/10)
                                
                                ScrollView {
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                        
                                        BulletView(bullet: "1", text: "Abrir cuidadosamente el empaque, sin usar objetos filosos. ✂️")
                                        BulletView(bullet: "2", text: "Verificar la fecha de caducidad y que el empaque esté en buen estado. ✅")
                                        BulletView(bullet: "3", text: "Presionar la punta del condón para sacar el aire. 💨")
                                        BulletView(bullet: "4", text: "Colocar el condón en la cabeza del pene. ✅")
                                        BulletView(bullet: "5", text: "Desenrollar el condón hasta la base del pene. ✅")
                                        BulletView(bullet: "6", text: "Después de la eyaculación, retirar el pene mientras todavía está erecto, sujetando el condón para que no se desprenda. ✅")
                                        BulletView(bullet: "7", text: "Tirar el condón a la basura, no al inodoro. 🚮")
                                        
                                    } // -> VStack
                                    .padding(.horizontal)
                                    
                                    Spacer()
                                    
                                    HStack(spacing: 50) {
                                        
                                        Button(action: {
                                            dismiss()
                                        }, label: {
                                            
                                            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing) // Agregar gradiente al fondo del botón
                                                .mask(Image(systemName: "arrow.left") // Usar el icono de flecha como máscara
                                                    .resizable()
                                                    .foregroundColor(.white)
                                                    .frame(width: 30, height: 30))
                                                .frame(width: 60, height: 60) // Establecer el tamaño del botón
                                                .padding(.vertical, 20) // Agregar un espacio vertical entre el botón y el texto inferior
                                                .background(Color.clear) // Establecer el fondo del botón como transparente
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 30)
                                                        .stroke(LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing), lineWidth: 3)
                                                        .frame(width: 66, height: 66)
                                                ) // Agregar un borde redondeado al botón
                                                .padding(.bottom, 20)
                                            
                                        }) // -> NavigationLink
                                        
                                        NavigationLink(destination: VIHCondonView(), label: {
                                            
                                            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing) // Agregar gradiente al fondo del botón
                                                .mask(Image(systemName: "arrow.right") // Usar el icono de flecha como máscara
                                                    .resizable()
                                                    .foregroundColor(.white)
                                                    .frame(width: 30, height: 30))
                                                .frame(width: 60, height: 60) // Establecer el tamaño del botón
                                                .padding(.vertical, 20) // Agregar un espacio vertical entre el botón y el texto inferior
                                                .background(Color.clear) // Establecer el fondo del botón como transparente
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 30)
                                                        .stroke(LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing), lineWidth: 3)
                                                        .frame(width: 66, height: 66)
                                                ) // Agregar un borde redondeado al botón
                                                .padding(.bottom, 20)
                                            
                                        }) // -> NavigationLink
                                        
                                    } // -> HStack
                                    
                                    Spacer()
                                        .frame(height: geo.size.height/15)
                                    
                                } // -> VStack
                                
                            } // -> ScrollView
                            
                        } // -> ZStack
                        
                    } // -> ZStack
                    
                } // -> GeometryReader
                
            } // -> NavigationView
            .navigationBarHidden(true)
            
        } // -> if-else
     
    } // -> body
    
} // -> VIHCondonView

struct BulletView: View {
    
    let bullet: String
    let text: String
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 20) {
            
            Circle()
                .foregroundColor(.red)
                .frame(width: 30, height: 30)
                .overlay(Text(bullet).foregroundColor(.white))
                .fontWeight(.bold)

            Text(text)
                .foregroundColor(.black)
                .lineLimit(nil)
            
        } // -> HStack
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        
    } // -> body
    
} // -> VIHCondonView

struct VIHCondonView_Previews: PreviewProvider {
    static var previews: some View {
        VIHCondonView()
    }
}
