//
//  ProfileCardView.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

struct ProfileCardView: View {
    
    var body: some View {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 375, height: 254)
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    
                    VStack(spacing: 20) {
                        
                        Image("User")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                        
                        Text("Sam Montoya")
                            .font(.system(size: 30, weight: .heavy))
                            .multilineTextAlignment(.center)
                        
                    } // -> HStack
                    
                } // -> ZStack
        
    } // -> body
    
} // -> ProfileCardView

struct ProfileCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardView()
    }
}
