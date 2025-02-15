//
//  Recipe.swift
//  BestRecipes
//
//  Created by Evgenii Mazrukho on 30.06.2024.
//

import Foundation

struct Recipe: Codable {
    let id: Int
    let title: String?
    let instruction: String?
    let instructions: [Instruction]?
    let author: String?
    let spoonacularScore: Double?
    let readyInMinutes: Int?
    let imageURL: String?
    let extendedIngredients: [Ingredient]?
    let dishTypes: [String]?
    let servings: Int?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case instruction = "instructions"
        case instructions = "analyzedInstructions"
        case author = "sourceName"
        case spoonacularScore = "spoonacularScore"
        case readyInMinutes = "readyInMinutes"
        case imageURL = "image"
        case extendedIngredients = "extendedIngredients"
        case dishTypes = "dishTypes"
        case servings = "servings"
    }
    
    var rating: Double {
        guard let spoonacularScore else { return 0.0 }
        
        return 5 * spoonacularScore / 100.0
    }
    
    let reviewsCount: Int = Int.random(in: 200...500)
}

extension Recipe {
    var mockInstuction: [String: String] {
        let instruction = [
            "1": K.step1,
            "2": K.step2,
            "3": K.step3,
            "4": K.step4,
        ]
        return instruction
    }
}
