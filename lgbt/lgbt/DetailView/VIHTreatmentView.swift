//
//  HIVTreatmentView.swift
//  TrueColors
//
//  Created by Alberto Estrada on 11/05/23.
//

import SwiftUI
import SafariServices


struct WebView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        let safariViewController = SFSafariViewController(url: url)
        return safariViewController
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // No es necesario implementar nada aquí en este caso
    }
}

struct HIVTreatmentView: View {
    
    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple]
    let gradient = Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple])
    
    @State private var isShowingWebView = false

    @Environment(\.dismiss) var dismiss
    
    @State private var changeView: Bool = false
    
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
                            
                            VStack(spacing: 20) {
                                
                                Text("Tratamiento del \n VIH")
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
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        
                                        Text("El tratamiento del VIH se basa en medicamentos antirretrovirales que combaten el virus y reducen la carga viral.")
                                            .font(.body)
                                            .foregroundColor(.secondary)
                                        
                                    } // -> VStack
                                    .padding(.horizontal, 25)
                                
                                    VStack(alignment: .leading, spacing: 10) {
                                        
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            Circle()
                                                .fill(Color.red)
                                                .frame(width: 8, height: 8)
                                            
                                            Text("Toma los medicamentos de forma constante y en las dosis indicadas. 💊")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            Circle()
                                                .fill(Color.yellow)
                                                .frame(width: 8, height: 8)
                                            
                                            Text("Realiza controles regulares de carga viral y células CD4. 🦠")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            Circle()
                                                .fill(Color.green)
                                                .frame(width: 8, height: 8)
                                            
                                            Text("Combina el tratamiento con terapia y medidas adicional. 🏥")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            Circle()
                                                .fill(Color.blue)
                                                .frame(width: 8, height: 8)
                                            
                                            Text("No descuides tu salud mental. 🧠")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                    } // -> VStack
                                    .padding(.horizontal, 35)
                                
                                    Text("Efectos secundarios:")
                                        .fontWeight(.bold)
                                        .padding(.horizontal, 20)
                                        .padding()
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 5)
                                                
                                                Circle()
                                                    .fill(Color.red)
                                                    .frame(width: 8, height: 8)
                                            }
                                            
                                            Text("Náuseas y vómitos")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 5)
                                                
                                                Circle()
                                                    .fill(Color.blue)
                                                    .frame(width: 8, height: 8)
                                                
                                            }
                                            
                                            Text("Diarrea")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 5)
                                                
                                                Circle()
                                                    .fill(Color.green)
                                                    .frame(width: 8, height: 8)
                                                
                                            }
                                            
                                            Text("Sequedad de la boca")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 5)
                                                
                                                Circle()
                                                    .fill(Color.purple)
                                                    .frame(width: 8, height: 8)
                                                
                                            }
                                            
                                            Text("Dolor de cabeza")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                        HStack(alignment: .top, spacing: 10) {
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 5)
                                                
                                                Circle()
                                                    .fill(Color.yellow)
                                                    .frame(width: 8, height: 8)
                                                
                                            }
                                            
                                            Text("Fatiga")
                                                .font(.body)
                                                .foregroundColor(.primary)
                                            
                                        } // -> HStack
                                    
                                    }
                                    .padding(.horizontal, 40)
                                
                                    Spacer()
                                    
                                    Button(action: {
                                        isShowingWebView.toggle()
                                    }) {
                                        Text("Conoce más del PrEP 💊")
                                            .font(.body)
                                            .foregroundColor(.black)
                                            .padding()
                                            .background(Color.white)
                                            .cornerRadius(10)
                                    } // -> Button
                                    .padding(.top, 20)
                                    .shadow(color: Color.blue.opacity(0.3), radius: 5, x: 0, y: 2)
                                    .bold()
                                    .sheet(isPresented: $isShowingWebView) {
                                        WebView(url: URL(string: "https://www.gob.mx/censida/articulos/campana-de-la-profilaxis-pre-exposicion-prep-para-prevenir-entrale-con-todo?idiom=es")!)
                                    } // -> .sheet
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
                                            
                                        }) // -> Button
                                    
                                        NavigationLink(destination: QuizView(), label: {
                                            
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
                                    
                                    // Centrar el botón horizontalmente
                                    Spacer()
                                        .frame(height: geo.size.height/15)
                                    
                                } // -> ScrollView
                                
                            } // -> VStack
                            
                        } // -> ZStack
                        
                    } // -> ZStack
                    
                } // -> GeometryReader
                
            } // -> NavigationView
            .navigationBarHidden(true)
            
        } // -> if-else
        
    } // -> body
    
} // -> VIHTreatmentView

struct HIVTreatmentView_Previews: PreviewProvider {
    static var previews: some View {
        HIVTreatmentView()
    }
}
