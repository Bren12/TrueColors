//
//  UserView.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

class VirusViewModel: ObservableObject {
    @Published var virus: [Virus] = Virus.ets
}

struct UserView: View {
    
    @ObservedObject var viewModel = VirusViewModel()
    
    @State private var showVirus = false
    @State var virus = Virus.ets[0]
    
    
    var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/YYYY"
        return formatter
    }
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack(alignment: .top) {
                
                Colors.background
                
                ZStack(alignment: .top) {
                    
                    Image("Profile")
                    
                    VStack(spacing: 60) {
                        
                        VStack {
                            Spacer()
                            ProfileCardView()
                        }
                        .frame(height: 307)
                        
                        ScrollView {
                            
                            ForEach(viewModel.virus) { virus in
                                
                                Button(action: {
                                    
                                    showVirus = true
                                    self.virus = virus
                                    
                                }, label: {
                                    
                                    VStack {
                                        
                                        ZStack {
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(LinearGradient(gradient: Gradient(colors: [virus.color1, virus.color2]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                                .frame(width: 375, height: 254)
                                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                            
                                            
                                            VStack {
                                                
                                                HStack(alignment: .top) {
                                                    
                                                    VStack(alignment: .leading, spacing: 10) {
                                                        
                                                        Spacer()
                                                            .frame(height: 5)
                                                        
                                                        Text(virus.name)
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 32, weight: .heavy))
                                                            .multilineTextAlignment(.leading)
                                                        
                                                        Text(virus.status ? "Positivo" : "Negativo")
                                                            .foregroundColor(.white)
                                                            .font(.system(size: 24, weight: .medium))
                                                        
                                                    } // -> VStack
                                                    .frame(width: 375)
                                                    
                                                    Spacer()
                                                        .frame(width: virus.name.count > 10 ? 150 : 200)
                                                    
                                                } // -> HStack
                                                
                                                Spacer()
                                                    .frame(height: virus.name.count > 10 ? 50 : 100)
                                                
                                                Text("Última actualización: \(dateFormat.string(from: virus.date))")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 20, weight: .medium))
                                                
                                            } // -> VStack
                                            .overlay {
                                                
                                                VStack {
                                                    
                                                    HStack {
                                                        
                                                        Spacer()
                                                            .frame(width: virus.name == "VIH" ? 125 : 200)
                                                        
                                                        Image(virus.image)
                                                        
                                                    } // -> HStack
                                                    
                                                    Spacer()
                                                        .frame(height: virus.name == "VIH" ? 25 : 100)
                                                    
                                                } // -> VStack
                                                
                                            } // -> overlay
                                            
                                        } // -> ZStack
                                        
                                        Spacer()
                                            .frame(height: 50)
                                        
                                    } // -> VStack
                                    .frame(width: geo.size.width)
                                    
                                }) // -> Button
                                
                            } // -> ForEach
                            
                            Spacer()
                                .frame(height: 75)
                            
                        } // -> ScrollView
                            
                    } // -> VStack
                    
                } // -> ZStack
                
            } // -> ZStack
            .overlay {
                
                if showVirus {
                    
                    ZStack {
                        
                        Color.black.opacity(0.4)
                            .onTapGesture(perform: {
                                showVirus = false
                            }) // -> Color.onTapGesture
                        
                        PopView(show: $showVirus, virus: $viewModel.virus[searchVirus(virus: virus)])
                        
                    } // -> ZStack
                    
                }  // if-else
                
            } // ZStack.overlay
            
        } // -> GeometryReader
        
    } // body
    
    func updateVirus(virus: Virus) {
        if let index = Virus.ets.firstIndex(where: { $0.id == virus.id }) {
            Virus.ets[index] = virus
        }
    }
    
    func searchVirus(virus: Virus) -> Int {
        if let index = Virus.ets.firstIndex(where: { $0.id == virus.id }) {
            return index
        }
        return 0
    }
    
} // -> UserView

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
