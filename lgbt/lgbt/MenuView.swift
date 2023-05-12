//
//  SwiftUIView.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

var tabs = ["house.fill", "message.fill", "phone.fill", "person.fill"]

struct CustomShape: Shape {
    
    var xAxis: CGFloat
    
    var animatableData: CGFloat {
        get{return xAxis}
        set{xAxis = newValue}
    } // -> animatableData
    
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            let center = xAxis
            
            path.move(to: CGPoint(x: center - 50, y: 0))
            
            let to1 = CGPoint(x: center, y: 35)
            let control1 = CGPoint(x: center - 25, y: 0)
            let control2 = CGPoint(x: center - 25, y: 35)
            
            let to2 = CGPoint(x: center + 50, y: 0)
            let control3 = CGPoint(x: center + 25, y: 35)
            let control4 = CGPoint(x: center + 25, y: 0)
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
            
        } // Path
        
    } // -> path
    
} // -> CustomShape

struct MenuView: View {
    
    @State var selectedtab = "house.fill"
    @State var xAxis: CGFloat = 0
    
    @Namespace var animation
    
    init() {
        UITabBar.appearance().isHidden = true
    } // -> init
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $selectedtab) {
                
                HomeView()
                    .ignoresSafeArea()
                    .tag("house.fill")
                
                ChatView()
                    .ignoresSafeArea()
                    .tag("message.fill")
                
                MentalHealthHotlinesView()
                    .ignoresSafeArea()
                    .tag("phone.fill")
                
                UserView()
                    .ignoresSafeArea()
                    .tag("person.fill")
                
            } // -> TabView
            
            
            HStack(spacing: 0) {
                
                ForEach(tabs,id: \.self) { image in
                    
                    GeometryReader { geo in
                        
                        Button( action: {
                            
                            withAnimation(.spring()){
                                selectedtab = image
                                xAxis = geo.frame(in: .global).minX
                            } // -> withAnimation
                            
                        }, label: {
                            
                            Image(systemName: image)
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(selectedtab == image ? getColor(image: image) : Color.gray.opacity(0.75))
                                .padding(selectedtab == image ? 15 : 0)
                                .background(Color.white.opacity(selectedtab == image ? 1 : 0).clipShape(Circle()))
                                .matchedGeometryEffect(id: image, in: animation)
                                .offset(x: selectedtab == image ? (geo.frame(in: .global).minX - geo.frame(in: .global).midX) : 0,y: selectedtab == image ? -50 : 0)
                            
                        }) // -> Button
                        .onAppear(perform: {
                            
                            if image == tabs.first{
                                xAxis = geo.frame(in: .global).minX
                            }
                            
                        }) // -> Button.onAppear
                        
                    } // -> GeometryReader
                    .frame(width: 25, height: 30)
                    
                    if image != tabs.last {
                        Spacer(minLength: 0)
                    } // -> if-else
                    
                } // -> ForEach
                
            } // -> HStack
            .padding(.horizontal,30)
            .padding(.vertical)
            .background(Color.white.clipShape(CustomShape(xAxis: xAxis)).cornerRadius(12))
            .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 20)
            .padding(.horizontal)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
        } // -> ZStack
        .ignoresSafeArea(.all, edges: .bottom)
        
    } // -> body
    
    func getColor(image: String) -> Color {
        
        switch image {
            
            case "house.fill":
                return Colors.primaryDark
            case "message.fill":
                return Colors.primaryDark
            case "phone.fill":
                return Colors.primaryDark
            case "person.fill":
                return Colors.primaryDark
            default:
                return Color.blue
            
        } // -> switch
        
    } // -> getColor
    
} // -> MenuView

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
