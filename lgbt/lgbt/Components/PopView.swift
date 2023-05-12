//
//  PopView.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

struct PopView: View {
    
    @Binding var show: Bool
    
    var virus: Virus
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack(alignment: .center) {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(gradient: Gradient(colors: [Colors.primaryDark, Colors.primaryLight]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: geo.size.width - 50, height: geo.size.height/2)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .frame(width: geo.size.width - 100, height: geo.size.height/3)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    
                    VStack {
                        
                    }
                    
                } // -> ZStack
                
            } // -> ZStack
            
        } // -> GeometryReader
        
    } // -> body
    
} // -> PopView

struct PopView_Previews: PreviewProvider {
    static var previews: some View {
        PopView(show: .constant(true), virus: Virus.ets[0])
    }
}
