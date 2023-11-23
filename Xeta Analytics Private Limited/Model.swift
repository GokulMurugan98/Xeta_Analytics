//
//  Model.swift
//  Xeta Analytics Private Limited
//
//  Created by Gokul Murugan on 21/11/23.
//

import Foundation

struct ResultData:Codable{
    var success:Bool
    var data:DataFromApi
    var message:String
}

struct DataFromApi:Codable{
    var section_1: sectionOne
    var section_2: sectionTwo
    var section_3: sectionThree
    var section_4: sectionFour
}

struct sectionOne:Codable{
    var plan_name:String
    var progress:String
}

struct sectionTwo:Codable{
    var accuracy:String
    var workout_duration:String
    var reps:Int
    var calories_burned:Int
}

struct sectionThree:Codable{
    var plan_1,plan_2: Plans
}

struct Plans:Codable{
    var plan_name:String
    var difficulty:String
}

struct sectionFour:Codable{
    var category_1,category_2: CategoryType
}

struct CategoryType:Codable{
    var category_name:String
    var no_of_exercises:String
}
