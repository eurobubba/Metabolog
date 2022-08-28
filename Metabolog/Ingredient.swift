//
//  Ingredient.swift
//  Metabolog
//
//  Created by MLG on 7/4/22.
//

import Foundation

class Ingredient: Comparable, ObservableObject {
    @Published var name = "Ingredient"
    @Published var servingSize = 0.0
    @Published var calories = 0
    @Published var totalFatG = 0.0
    @Published var totalFatP = 0
    @Published var saturatedFatG = 0.0
    @Published var transFat = 0.0
    @Published var cholesterolG = 0.0
    @Published var cholesterolP = 0
    @Published var sodiumG = 0.0
    @Published var sodiumP = 0
    @Published var totalCarbG = 0.0
    @Published var totalCarbP = 0
    @Published var fiberG = 0.0
    @Published var fiberP = 0
    @Published var totalSugarG = 0.0
    @Published var addedSugarG = 0.0
    @Published var addedSugarP = 0
    @Published var proteinG = 0.0
    
    static let example = Ingredient()
    
    init(name: String = "Ingredient", servingSize: Double = 0.0, calories: Int = 0, totalFatG: Double = 0.0, totalFatP: Int = 0, saturatedFatG: Double = 0.0, transFat: Double = 0.0, cholesterolG: Double = 0.0, cholesterolP: Int = 0, sodiumG: Double = 0.0, sodiumP: Int = 0, totalCarbG: Double = 0.0, totalCarbP: Int = 0, fiberG: Double = 0.0, fiberP: Int = 0, totalSugarG: Double = 0.0, addedSugarG: Double = 0.0, addedSugarP: Int = 0, proteinG: Double = 0.0) {
        self.name = name
        self.servingSize = servingSize
        self.calories = calories
        self.totalFatG = totalFatG
        self.totalFatP = totalFatP
        self.saturatedFatG = saturatedFatG
        self.transFat = transFat
        self.cholesterolG = cholesterolG
        self.cholesterolP = cholesterolP
        self.sodiumG = sodiumG
        self.sodiumP = sodiumP
        self.totalCarbG = totalCarbG
        self.totalCarbP = totalCarbP
        self.fiberG = fiberG
        self.fiberP = fiberP
        self.totalSugarG = totalSugarG
        self.addedSugarG = addedSugarG
        self.addedSugarP = addedSugarP
        self.proteinG = proteinG
    }
    
    static func ==(lhs: Ingredient, rhs: Ingredient) -> Bool {
        lhs.name == rhs.name
    }
    
    static func <(lhs: Ingredient, rhs: Ingredient) -> Bool {
        lhs.name < rhs.name
    }
}
