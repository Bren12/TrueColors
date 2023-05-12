//
//  HomeView.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { geo in
                
                ZStack(alignment: .top) {
                    
                    Colors.background
                    
                    ZStack(alignment: .top) {
                        
                        Image("Home")
                        
                        VStack(spacing: 40) {
                            
                            VStack {
                                Spacer()
                                ChatbotCardView()
                            }
                            .frame(height: 225)
                            
                            VStack {
                                
                                Text("Información")
                                    .font(.system(size: 30))
                                    .bold()
                                    .frame(height: 30)
                                
                                ScrollView(.horizontal) {
                                    
                                    HStack(spacing: 20) {
                                        
                                        Spacer()
                                            .frame(width: 10)
                                        
                                        NavigationLink(destination: VIHView(), label: {
                                            
                                            ZStack {
                                                
                                                Image("Group2")
                                                
                                                ZStack {
                                                    
                                                    Image(systemName: "magnifyingglass")
                                                        .font(.system(size: 150))
                                                        .foregroundColor(.red.opacity(0.35))
                                                    
                                                    VStack {
                                                        
                                                        Text("¿Qué es el VIH?")
                                                            .font(.system(size: 30, weight: .bold))
                                                            .foregroundColor(.white)
                                                            .frame(width: 175)
                                                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                                        
                                                    } // -> VStack
                                                    
                                                } // -> ZStack
                                                
                                            } // -> ZStack
                                        })
                                        
                                        NavigationLink(destination: PrevencionVIHView(), label: {
                                            
                                            ZStack {
                                                
                                                Image("Group3")
                                                
                                                ZStack {
                                                    
                                                    Image(systemName: "cross.case")
                                                        .font(.system(size: 125))
                                                        .foregroundColor(.orange.opacity(0.5))
                                                    
                                                    VStack {
                                                        
                                                        Text("Medidas de prevención del VIH")
                                                            .font(.system(size: 30, weight: .bold))
                                                            .foregroundColor(.white)
                                                            .frame(width: 175)
                                                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                                        
                                                    } // -> VStack
                                                    
                                                } // -> ZStack
                                                
                                            } // -> ZStack
                                            
                                        })
                                        
                                        NavigationLink(destination: VIHCondonView(), label: {
                                            
                                            ZStack {
                                                
                                                Image("Group1")
                                                
                                                ZStack {
                                                    
                                                    Image(systemName: "shield")
                                                        .font(.system(size: 150))
                                                        .foregroundColor(.green.opacity(0.6))
                                                
                                                    VStack {
                                                        
                                                        Text("Uso correcto del condón")
                                                            .font(.system(size: 30, weight: .bold))
                                                            .foregroundColor(.white)
                                                            .frame(width: 175)
                                                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                                        
                                                    } // -> VStack
                                                    
                                                } // -> ZStack
                                                
                                            } // -> ZStack
                                            
                                        })
                                        
                                        NavigationLink(destination: HIVTreatmentView(), label: {
                                            
                                            ZStack {
                                                
                                                Image("Group4")
                                                
                                                ZStack {
                                                    
                                                    Image(systemName: "cross.vial")
                                                        .font(.system(size: 150))
                                                        .foregroundColor(.blue.opacity(0.5))
                                                
                                                    VStack {
                                                        
                                                        Text("Tratamiento del VIH")
                                                            .font(.system(size: 30, weight: .bold))
                                                            .foregroundColor(.white)
                                                            .frame(width: 175)
                                                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                                        
                                                    } // -> VStack
                                                    
                                                } // -> ZStack
                                                
                                            } // -> ZStack
                                            
                                        })
                                        
                                        Spacer()
                                            .frame(width: 10)
                                        
                                    } // -> HStack
                                    .frame(height: 300)
                                    
                                } // -> ScrollView
                                
                                NavigationLink(destination: QuizView(), label: {
                                    
                                    ZStack {
                                        
                                        Image("Group5")
                                        
                                        HStack {
                                                
                                            Image(systemName: "list.bullet.clipboard")
                                                .font(.system(size: 70))
                                                .foregroundColor(.pink.opacity(0.35))
                                                .offset(y: -7.5)
                                                
                                            Text("VIH Quiz")
                                                .font(.system(size: 30, weight: .bold))
                                                .foregroundColor(.white)
                                                .frame(width: 150)
                                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                                
                                            } // -> HStack
                                        
                                    } // -> ZStack
                                    
                                })
                                
                                
                            } // -> VStack
                            
                        } // -> VStack
                        
                    } // -> ZStack
                    
                }  // -> ZStack
                .ignoresSafeArea()
                
            } // -> GeometryReader
            
        } // -> NavigationView
        .navigationBarHidden(true)
        
    }  // -> body
    
}  // -> HomeView

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
