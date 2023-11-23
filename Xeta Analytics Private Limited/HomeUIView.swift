//
//  HomeUIView.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 22/11/23.
//

import SwiftUI

struct HomeUIView: View {
    @StateObject var apiCall = APICall()
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .leading){
                        Text("Good Morning 🔥")
                        Text("RIA")
                    }.font(.system(size: 16))
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                    Spacer()
                    Image("Person")
                        .resizable()
                        .scaledToFit()
                        .padding(.trailing,20)
                    
                    
                }.frame(height: 50)
                
                Rectangle()
                    .foregroundColor(colorScheme == .dark ? .white : .clear)
                .frame(width: 350, height: 35)
                .background(Color(red: 0.96, green: 0.96, blue: 0.96).opacity(0.55))
                .cornerRadius(15)
                .overlay {
                    HStack{
                        Image(systemName: "camera")
                            .padding(.horizontal,10)
                        Text("Search Exercise")
                            .font(.system(size: 16))
                            .fontWeight(.light)
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .padding(.trailing,30)
                        
                    }
                    .foregroundColor(.black)
                    .onTapGesture {
                        print("Button to seach for exercise tapped")
                    }
                }
                
                Text("Active Workout Plan")
                .font(
                Font.custom("Poppins", size: 14)
                .weight(.medium)
                )
                .padding(.vertical, 15)
                WorkOutCardUIView()
                Text("Enhance your journey with AI tracker")
                .font(
                Font.custom("Poppins", size: 14)
                .weight(.medium)
                )
                .padding(.top, 10)
                AIActivityTrackerView()
                
                HStack{
                    Text("Recommended Plan")
                    .font(
                    Font.custom("Poppins", size: 12)
                    .weight(.medium)
                    )
                    Spacer()
                    Text("See All")
                    .font(
                    Font.custom("Montserrat", size: 12)
                    .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.73, green: 0.75, blue: 0.08))
                    .onTapGesture {
                        print("See all recommended plans button pressed")
                    }
                    .frame(width: 55, alignment: .top)
                }.padding(.top, 10)
                RecommendedPlanView()
                HStack{
                    Text("Categories")
                    .font(
                    Font.custom("Poppins", size: 12)
                    .weight(.medium)
                    )
                    Spacer()
                    Text("See All")
                    .font(
                    Font.custom("Montserrat", size: 12)
                    .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.73, green: 0.75, blue: 0.08))
                    .onTapGesture {
                        print("See all actegories button pressed")
                    }
                    .frame(width: 55, alignment: .top)
                }.padding(.top, 10)
                ExerciseUIView()
                
            }.environmentObject(apiCall)
            
        }.padding(20)
            .onAppear{
                apiCall.fetch()
            }
    }
}

#Preview {
    HomeUIView()
}
