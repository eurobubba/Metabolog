//
//  Meal.swift
//  Metabolog
//
//  Created by MLG on 7/4/22.
//

import Foundation

class Meal: Comparable, ObservableObject {
    @Published var name = "Meal"
    @Published var servings = 1
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
    
    static let example = Meal()
    
    init(name: String = "Big Mac", servings: Int = 1, calories: Int = 563, totalFatG: Double = 33.0, totalFatP: Int = 50, saturatedFatG: Double = 8.0, transFat: Double = 1.3, cholesterolG: Double = 79.0, cholesterolP: Int = 26, sodiumG: Double = 1_000.7, sodiumP: Int = 41, totalCarbG: Double = 44.0, totalCarbP: Int = 14, fiberG: Double = 3.5, fiberP: Int = 14, totalSugarG: Double = 9.0, addedSugarG: Double = 0.0, addedSugarP: Int = 0, proteinG: Double = 26.0) {
        self.name = name
        self.servings = servings
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
    
    static func ==(lhs: Meal, rhs: Meal) -> Bool {
        lhs.name == rhs.name
    }
    
    static func <(lhs: Meal, rhs: Meal) -> Bool {
        lhs.name < rhs.name
    }
}

