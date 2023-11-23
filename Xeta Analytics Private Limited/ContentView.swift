//
//  ContentView.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var color:Color = .blue
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack{
            HomeUIView()
        }
        
        Spacer()
        GeometryReader{ geo in
            HStack{
                VStack{
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 25,height: 20)
                    Text("Home")
                        .font(.system(size: 10))
                    
                }.foregroundColor(colorScheme == .dark ? .white : .gray)
                Spacer()
                
                Image("Frame")
                    .resizable()
                    .frame(width: 30,height: 30)
                
                Spacer()
                
                Image("Group")
                    .resizable()
                    .frame(width: 30,height: 30)
                
                Spacer()
                
                Image("Vector")
                    .resizable()
                    .frame(width: 25,height: 20)
                
                
                
                
            }.frame(height: 5)
            
        }
        
        .frame(height: 10)
        .padding(.horizontal, 30)
        
        
    }
}

#Preview {
    ContentView()
}
