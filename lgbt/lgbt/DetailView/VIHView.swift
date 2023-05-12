//
//  VIHView.swift
//  lgbt
//
//  Created by Alberto Estrada on 11/05/23.
//

import SwiftUI

struct VIHView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    let gradient = Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple])
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { geo in
                
                ZStack(alignment: .top) {
                    
                    Colors.background
                    
                    ZStack(alignment: .top) {
                        
                        Image("Home")
                            .offset(y: -150)
                        
                        VStack {
                            
                            Text("¿Qué es el VIH?")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .offset(y: 2.5)
                                .overlay {
                                    
                                    Button(action: {
                                        dismiss()
                                    }, label: {
                                        
                                        HStack {
                                            
                                            Image(systemName: "arrow.left")
                                                .foregroundColor(.white)
                                                .font(.system(size: 24))
                                                .padding()
                                            
                                        } // HStack
                                        
                                    }) // -> Button
                                    .offset(x: -geo.size.width/2.5)
                                    
                                } // -> Button.overlay
                            
                            Spacer()
                                .frame(height: geo.size.height/10)
                            
                            Text("El VIH (virus de inmunodeficiencia humana) es un virus que ataca el sistema inmunológico, lo que puede debilitar la capacidad del cuerpo para combatir enfermedades e infecciones.")
                                .padding(.top, 20)
                                .padding(.horizontal, 20)
                            
                            Text("El VIH se puede transmitir a través de ciertos fluidos como:")
                                .fontWeight(.bold)
                                .padding(.top, 20)
                                .padding(.horizontal, 15)
                            
                            HStack(spacing: 20) {
                                
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(height: 70)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Sangre")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    ) // -> overlat
                                
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [.orange, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(height: 70)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Semen")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    ) // -> overlay
                                
                            } // -> HStack
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                            
                            HStack(spacing: 20) {
                                
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .green]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(height: 70)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Fluidos Preeyaculatorios")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    ) // -> overlay
                                
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(height: 70)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Fluidos rectales")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    ) // -> overlay
                                
                            } // -> HStack
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                            
                            HStack(spacing: 20) {
                                
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(height: 70)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Fluidos vaginales")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    ) // -> overlay
                                
                                Rectangle()
                                    .fill(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                    .frame(height: 70)
                                    .cornerRadius(10)
                                    .overlay(
                                        Text("Leche materna")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    ) // -> overlay
                                
                            } // -> HStack
                            .padding(.top, 20)
                            .padding(.horizontal, 20)
                            
                            Spacer()
                                .frame(height: geo.size.height/20)
                            
                            NavigationLink(destination: PrevencionVIHView(), label: {
                                
                                LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing) // Agregar gradiente al fondo del botón
                                    .mask(Image(systemName: "arrow.right") // Usar el icono de flecha como máscara
                                        .resizable()
                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30))
                                    .frame(width: 60, height: 60) // Establecer el tamaño del botón
                                    .padding(.vertical, 20) // Agregar un espacio vertical entre el botón y el texto inferior
                                    .frame(maxWidth: .infinity) // Ajustar el ancho del botón al máximo disponible
                                    .background(Color.clear) // Establecer el fondo del botón como transparente
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing), lineWidth: 3)
                                            .frame(width: 66, height: 66)
                                    ) // Agregar un borde redondeado al botón
                                    .padding(.bottom, 20)
                                
                            }) // -> NavigationLink
                            .frame(maxWidth: .infinity, alignment: .center) // Centrar el botón horizontalmente
                            
                        } // -> VStack
                        
                    } // -> ZStack
                    
                } // -> ZStack
                
            } // -> GeometryReader
            
        } // -> NavigationView
        .navigationBarHidden(true)
        
    } // -> body
    
} // -> VIHView

struct VIHView_Previews: PreviewProvider {
    static var previews: some View {
        VIHView()
    }
}
