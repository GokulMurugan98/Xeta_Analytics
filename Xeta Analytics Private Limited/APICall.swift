//
//  APICall.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 21/11/23.
//

import Foundation

class APICall:ObservableObject{
    
    
    
    @Published var dataFromApi:ResultData?
    
    private var urlString = "http://52.25.229.242:8000/homepage_v2/?format=json"
    
    func fetch(){
        guard let url = URL(string: urlString) else {
            print("Unable to parse url")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] Data, _, Er in
            guard let dt = Data else {
                return
            }
            if Er == nil{
                do{
                    let dataToBeUpdated = try JSONDecoder().decode(ResultData.self, from: dt)
                    DispatchQueue.main.async {
                        self?.dataFromApi = dataToBeUpdated
                    }
                    
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
            
        }
        task.resume()
        
        
    }
    
    
}
