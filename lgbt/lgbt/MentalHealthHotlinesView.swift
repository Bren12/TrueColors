//
//  MentalHealthHotlinesView.swift
//  lgbt
//
//  Created by Alberto Estrada on 12/05/23.
//

import SwiftUI
import UIKit

struct MentalHealthHotlinesView: View {
    
    @State private var changeView: Bool = false
    
    let hotlines = [
            ("Línea Nacional contra el Suicidio", "1-888-628-9454"),
            ("SAPTEL (Sistema Nacional de Apoyo, Consejo Psicológico e Intervención en Crisis por Teléfono)", "01-800-472-7835"),
            ("Teléfono de la Esperanza", "717-003-717"),
            ("Cruz Roja Mexicana - Salud Mental", "55-5259-8121"),
            ("Consejo Ciudadano para la Seguridad y Justicia de la Ciudad de México", "55-5533-5533"),
            ("Instituto Nacional de Psiquiatría Ramón de la Fuente Muñiz", "800-273-8255"),
            ("Línea Nacional contra la Violencia de Género", "800-014-016"),
                ("Línea Nacional contra el Acoso Escolar", "900-018-018"),
                ("Línea Nacional de Ayuda a las Adicciones", "900-161-515"),
                ("Línea Nacional de Atención a Víctimas de Violencia Sexual", "800-009-008"),
        ]
    
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
                                Text("Números de emergencia ⚠️")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: geo.size.width - 100, height: geo.size.height/10)
                                    .multilineTextAlignment(.center)
                                
                                Spacer()
                                    .frame(height: geo.size.height/10)
                                
                                ScrollView {
                                    VStack(alignment: .leading, spacing: 20) {
                                        ForEach(hotlines, id: \.0) { hotline in
                                            HotlineButton(hotline: hotline)
                                        }
                                        
                                        Spacer()
                                            .frame(height: 100)
                                    }
                                    .padding(.horizontal, 50)
                                }
                            }
                        }
                        }
                    }
                } // NavigationView
            .navigationBarHidden(true)
            }
        }
    }

struct HotlineButton: View {
    let hotline: (String, String)
    
    var body: some View {
        
        Button(action: {
            openPhoneDialer(number: hotline.1)
        }) {
            HStack {
                Text(hotline.0)
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "phone.fill")
                    .foregroundColor(.red)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .opacity(0.8)
            )
            .padding(.top, 20)
            .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 2)
            .bold()
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    private func openPhoneDialer(number: String) {
        if let url = URL(string: "tel:\(number)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}

struct MentalHealthHotlinesView_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealthHotlinesView()
    }
}
