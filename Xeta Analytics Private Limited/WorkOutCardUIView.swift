//
//  WorkOutCardUIView.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 21/11/23.
//

import SwiftUI

struct WorkOutCardUIView: View {
    
    @EnvironmentObject var dataToDisplay: APICall
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 350, height: 185)
                .background(Color(red: 0.48, green: 0.97, blue: 0.49).opacity(0.26))
                .cornerRadius(10)
            
            Image("bgLines")
                .resizable()
                .opacity(0.4)
                .cornerRadius(10)
            
            HStack{
                Image("workOut")
                    .resizable()
                    .scaledToFit()
                VStack(alignment: .leading){
                    Spacer()
                    Text(dataToDisplay.dataFromApi?.data.section_1.plan_name ?? "Nil")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    ProgressView(value: convertProgressToInt(progress: dataToDisplay.dataFromApi?.data.section_1.progress ?? "32%"),total: 100)
                        .accentColor((convertProgressToInt(progress: dataToDisplay.dataFromApi?.data.section_1.progress ?? "32%")<50) ? Color.red : Color.green)
                        .scaleEffect(x: 1, y: 3, anchor: .center)
                        .padding(.vertical,5)
                        .overlay {
                            Text("\(Int(convertProgressToInt(progress: dataToDisplay.dataFromApi?.data.section_1.progress ?? "32%")))%")
                                .font(.system(size: 8))
                                .foregroundColor(.white)
                                .offset(CGSize(width: -49,height: 0.0))
                        }
                    
                    Button(action: {
                        print("Continue")
                    }, label: {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 75,height: 20)
                            .foregroundColor(Color("buttonColor"))
                            .overlay {
                                Text("CONTINUE")
                                    .font(.system(size: 10))
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                            }
                    })
                    Spacer()
                    Spacer()
                }.padding(.horizontal)
                
            }
            
        }
        .frame(width: 324, height: 187)
        .shadow(color: .black.opacity(0.08), radius: 1, x: 2, y: 2)
        
        
    }
    
    
    func convertProgressToInt(progress:String) -> Float{
        let string = progress.replacingOccurrences(of: "%", with: "")
        return Float(string) ?? 0.0
        
        
    }
    
}

#Preview {
    WorkOutCardUIView()
        .previewLayout(.sizeThatFits)
}
