//
//  AIActivityTrackerView.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 21/11/23.
//

import SwiftUI

struct AIActivityTrackerView: View {
    
    @EnvironmentObject var dataToDisplay: APICall
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
            
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.28, green: 0.76, blue: 0.86).opacity(0.86), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.8, green: 0.78, blue: 0.11).opacity(0.84), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.58, y: 2.41)
                    )
                )
                .cornerRadius(10)
            
            
            VStack {
                HStack {
                    Spacer()
                    VStack(alignment: .leading){
                        Spacer()
                        HStack{
                            Image("Ellipse 35")
                                .frame(width: 35, height: 35)
                                .shadow(color: .black.opacity(0.08), radius: 1, x: 2, y: 2)
                                .overlay {
                                    Image("workoutAccuracy")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .opacity(0.6)
                                        .offset(y:-2)
                                }
                            
                            VStack(alignment: .leading){
                                Text("Accuracy")
                                    .font(.system(size: 16))
                                    .fontDesign(.rounded)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                Text(dataToDisplay.dataFromApi?.data.section_2.accuracy ?? "0")
                                    .font(.system(size: 13))
                                    .fontDesign(.rounded)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                        }
                        Spacer()
                        HStack{
                            Image("Ellipse 35")
                                .frame(width: 35, height: 35)
                                .shadow(color: .black.opacity(0.08), radius: 1, x: 2, y: 2)
                                .overlay {
                                    Image("workoutReps")
                                        .resizable()
                                        .frame(width: 30,height: 30)
                                        .opacity(0.6)
                                        .offset(x:-2)
                                }
                            
                            VStack(alignment: .leading){
                                Text("Reps")
                                    .font(.system(size: 16))
                                    .fontDesign(.rounded)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                Text("\(dataToDisplay.dataFromApi?.data.section_2.reps ?? 2)")
                                    .font(.system(size: 13))
                                    .fontDesign(.rounded)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                        }
                        Spacer()
                        
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Spacer()
                        HStack{
                            Image("Ellipse 35")
                                .frame(width: 35, height: 35)
                                .shadow(color: .black.opacity(0.08), radius: 1, x: 2, y: 2)
                                .overlay {
                                    Image("workoutDuration")
                                        .resizable()
                                        .opacity(0.6)
                                }
                            
                            VStack(alignment: .leading){
                                Text("Workout Duration")
                                    .font(.system(size: 16))
                                    .fontDesign(.rounded)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                Text(dataToDisplay.dataFromApi?.data.section_2.workout_duration ?? "0 mins")
                                    .font(.system(size: 13))
                                    .fontDesign(.rounded)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                        }
                        Spacer()
                        HStack{
                            Image("Ellipse 35")
                                .frame(width: 35, height: 35)
                                .shadow(color: .black.opacity(0.08), radius: 1, x: 2, y: 2)
                                .overlay {
                                    Image("workoutCalories")
                                        .resizable()
                                        .opacity(0.6)
                                }
                            
                            VStack(alignment: .leading){
                                Text("Calories Burnt")
                                    .font(.system(size: 16))
                                    .fontDesign(.rounded)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                
                                Text("\(dataToDisplay.dataFromApi?.data.section_2.calories_burned ?? 0)")
                                    .font(.system(size: 13))
                                    .fontDesign(.rounded)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                            }
                            
                            
                        }
                        Spacer()
                        
                    }
                    Spacer()
                }
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 50)
                    .foregroundColor(.white).opacity(0.4)
                    .overlay {
                        HStack{
                            Image("Ellipse 35")
                                .frame(width: 35, height: 35)
                                .shadow(color: .black.opacity(0.08), radius: 1, x: 2, y: 2)
                                .overlay {
                                    Image("aiSuggestion")
                                        .resizable()
                                        .offset(x:0,y:1)
                                }
                            
                            VStack(alignment: .leading){
                                Text("200+ people tracked their fitness")
                                    .font(.system(size: 12))
                                    .fontWeight(.semibold)
                                HStack{
                                    Text("Why haven't you joined them yet?")
                                        .font(.system(size: 12))
                                    Button {
                                        print("Join now button Tapped")
                                    } label: {
                                        Text("TRY NOW")
                                            .font(.system(size: 11))
                                            .fontWeight(.semibold)
                                            .foregroundColor(.black)
                                    }
                                    
                                }
                                
                            }
                        }
                    }
            }
            
            
            
            
        }.frame(width: 350, height: 185)
    }
}

#Preview {
    AIActivityTrackerView()
        .previewLayout(.sizeThatFits)
    
}
