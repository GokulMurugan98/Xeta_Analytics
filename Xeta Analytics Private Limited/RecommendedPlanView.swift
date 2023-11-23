//
//  RecommendedPlanView.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 21/11/23.
//

import SwiftUI

struct RecommendedPlanView: View {
    @EnvironmentObject var dataToDisplay: APICall
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            HStack {
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 200, height: 100)
                        .background(Color(red: 0.26, green: 0.41, blue: 0.93).opacity(0.44))
                        .cornerRadius(10)
                        .overlay {
                            Image("bgLines")
                                .resizable()
                                .opacity(0.5)
                        }
                    HStack {
                        VStack(alignment: .leading){
                            Text(dataToDisplay.dataFromApi?.data.section_3.plan_1.plan_name ?? "Empty")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                            Text(dataToDisplay.dataFromApi?.data.section_3.plan_1.difficulty ?? "Easy")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                            
                        }
                        .foregroundColor(.white)
                        Image("womenImage")
                            .resizable()
                            .scaledToFit()
                    }.frame(width: 180, height: 120)
                    
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 200, height: 100)
                        .background(Color(red: 0.26, green: 0.41, blue: 0.93).opacity(0.44))
                        .cornerRadius(10)
                        .overlay {
                            Image("bgLines")
                                .resizable()
                                .opacity(0.5)
                        }
                    HStack {
                        VStack(alignment: .leading){
                            Text(dataToDisplay.dataFromApi?.data.section_3.plan_2.plan_name ?? "Empty")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                            Text(dataToDisplay.dataFromApi?.data.section_3.plan_2.difficulty ?? "Easy")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                            
                        }
                        .foregroundColor(.white)
                        Image("womenImage")
                            .resizable()
                            .scaledToFit()
                    }.frame(width: 180, height: 120)
                    
                }
                
            }
        }.shadow(radius: 3, x: 5,y: 5)
    }
}

#Preview {
    RecommendedPlanView()
}
