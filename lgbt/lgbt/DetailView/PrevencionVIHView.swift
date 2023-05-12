//
//  PrevencionVIHView.swift
//  lgbt
//
//  Created by Alberto Estrada on 11/05/23.
//

import SwiftUI

struct PrevencionVIHView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var changeView: Bool = false
    
    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    let gradient = Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple])
    
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
                                
                                Text("Medidas de prevención")
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
                                    
                                    Text("Algunas medidas de prevención que pueden ayudar a reducir el riesgo de infección:")
                                        .fontWeight(.bold)
                                        .padding(.horizontal)
                                        .frame(height: geo.size.height/19)
                                    
                                    HStack(spacing: 20) {
                                        
                                        Circle()
                                            .fill(LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .frame(width: 110, height: 110)
                                            .overlay(
                                                Text("Usa condón")
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .fontWeight(.bold)
                                                
                                            ) // -> Circle.overlay
                                        
                                        Circle()
                                            .fill(LinearGradient(gradient: Gradient(colors: [ .orange, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .frame(width: 110, height: 110)
                                            .overlay(
                                                Text("Realiza prueba del VIH")
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .fontWeight(.bold)
                                                
                                            ) // -> Circle.overlay
                                        
                                        Circle()
                                            .fill(LinearGradient(gradient: Gradient(colors: [ .yellow, .green]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .frame(width: 110, height: 110)
                                            .overlay(
                                                Text("Usa jeringas seguras")
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .fontWeight(.bold)
                                                
                                            ) // Circle.overlay
                                        
                                    } // -> HStack
                                    .padding()
                                    
                                    HStack(spacing: 20) {
                                        
                                        Circle()
                                            .fill(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .frame(width: 110, height: 110)
                                            .overlay(
                                                Text("Limitar parejas sexuales")
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .fontWeight(.bold)
                                                
                                            ) // -> Circle.overlay
                                        
                                        Circle()
                                            .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .frame(width: 110, height: 110)
                                            .overlay(
                                                Text("Profilaxis previa a la exposición (PrEP)")
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.center)
                                                    .fontWeight(.bold)
                                            ) // -> Circle.overlay
                                        
                                    } // -> HStack
                                    .padding()
                                    
                                    
                                    Text("Usted no puede contagiarse del VIH por medio de:")
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 20)
                                        .frame(height: geo.size.height/16)
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                        
                                        HStack(spacing: 10) {
                                            
                                            Image(systemName: "hand.raised")
                                                .foregroundColor(.purple)
                                            
                                            Text("Un apretón de mano.")
                                                .font(.subheadline)
                                                .foregroundColor(.primary)
                                                .fixedSize(horizontal: false, vertical: true)
                                            
                                        } // -> HStack
                                        
                                        HStack(spacing: 10) {
                                            
                                            Image(systemName: "person.2.square.stack.fill")
                                                .foregroundColor(.orange)
                                            
                                            Text("Un abrazo.")
                                                .font(.subheadline)
                                                .foregroundColor(.primary)
                                                .fixedSize(horizontal: false, vertical: true)
                                            
                                        } // -> HStack
                                        HStack(spacing: 10) {
                                            
                                            Image(systemName: "figure.2.arms.open")
                                                .foregroundColor(.pink)
                                            
                                            Text("Un beso con la boca cerrada.")
                                                .font(.subheadline)
                                                .foregroundColor(.primary)
                                                .fixedSize(horizontal: false, vertical: true)
                                            
                                        } // -> HStack
                                        
                                        HStack(spacing: 10) {
                                            
                                            Image(systemName: "toilet.fill")
                                                .foregroundColor(.blue)
                                            
                                            Text("A través del contacto con objetos como asientos de inodoros.")
                                                .font(.subheadline)
                                                .foregroundColor(.primary)
                                                .fixedSize(horizontal: false, vertical: true)
                                            
                                        } // -> HStack
                                        
                                        HStack(spacing: 10) {
                                            
                                            Image(systemName: "fork.knife")
                                                .foregroundColor(.green)
                                            
                                            Text("Platos y/o cubiertos usados por una persona con el VIH.")
                                                .font(.subheadline)
                                                .foregroundColor(.primary)
                                                .fixedSize(horizontal: false, vertical: true)
                                            
                                        } // -> HStack
                                        
                                    } // -> VStack
                                    .padding(.horizontal, 40)
                                    
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
                                    
                                } // SrollView
                                
                            } // VStack
                            
                        } // -> ZStack
                        
                    } // -> ZStack
                    
                } // GeometryReader
                
            } // NavigationView
            .navigationBarHidden(true)
            
        } // -> if-else
        
    } // -> body
    
} // -> PrevencionVIHView

struct PrevencionVIHView_Previews: PreviewProvider {
    static var previews: some View {
        PrevencionVIHView()
    }
}
