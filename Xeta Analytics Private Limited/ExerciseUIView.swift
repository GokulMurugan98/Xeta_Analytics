//
//  ExerciseUIView.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 21/11/23.
//

import SwiftUI

struct ExerciseUIView: View {
    
    @EnvironmentObject var dataToDisplay:APICall
    
    var body: some View {
        
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 145))], content: {
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color(red: 0.23, green: 0.89, blue: 0).opacity(0.2))
                    .cornerRadius(10)
                    .overlay {
                        Image("bgLines")
                            .resizable()
                            .opacity(0.4)
                            .cornerRadius(10)
                    }
                
                HStack{
                    Spacer()
                    VStack(alignment: .leading){
                        Text(dataToDisplay.dataFromApi?.data.section_4.category_1.category_name.uppercased() ?? "BICEPS")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                        
                        Text("\(dataToDisplay.dataFromApi?.data.section_4.category_1.no_of_exercises ?? "3") Exercise")
                            .font(.system(size: 11))
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Image("menImage")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading,5)
                }
                
            }
            .frame(width: 175, height: 95)
            
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color(red: 0.23, green: 0.89, blue: 0).opacity(0.2))
                    .cornerRadius(10)
                    .overlay {
                        Image("bgLines")
                            .resizable()
                            .opacity(0.4)
                            .cornerRadius(10)
                    }
                
                HStack{
                    Spacer()
                    VStack(alignment: .leading){
                        Text(dataToDisplay.dataFromApi?.data.section_4.category_2.category_name.uppercased() ?? "TRICEPS")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                        
                        Text("\(dataToDisplay.dataFromApi?.data.section_4.category_2.no_of_exercises ?? "5") Exercise")
                            .font(.system(size: 11))
                            .fontDesign(.rounded)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Image("menImage")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading,5)
                }
                
            }
            .frame(width: 175, height: 95)
            
        })
        
        
        
        
    }
}

#Preview {
    ExerciseUIView()
}
