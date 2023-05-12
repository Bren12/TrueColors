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
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Colors.primaryDark)
                                                .frame(width: 200, height: 250)
                                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                        })
                                        
                                        NavigationLink(destination: PrevencionVIHView(), label: {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Colors.primaryLight)
                                                .frame(width: 200, height: 250)
                                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                        })
                                        
                                        NavigationLink(destination: VIHCondonView(), label: {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Colors.primaryDark)
                                                .frame(width: 200, height: 250)
                                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                        })
                                        
                                        NavigationLink(destination: HIVTreatmentView(), label: {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Colors.primaryLight)
                                                .frame(width: 200, height: 250)
                                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                        })
                                        
                                        Spacer()
                                            .frame(width: 10)
                                        
                                    } // -> HStack
                                    .frame(height: 300)
                                    
                                } // -> ScrollView
                                
                                NavigationLink(destination: QuizView(), label: {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Colors.primaryDark)
                                        .frame(width: 375, height: 125)
                                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                                        .frame(height: 150)
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
