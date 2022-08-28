//
//  AddIngredientView.swift
//  Metabolog
//
//  Created by MLG on 7/4/22.
//

import SwiftUI

struct AddIngredientView: View {
    @Environment(\.dismiss) var dismiss
    var ingredient: Ingredient
    
    var showing: [String: Bool] {
        let d = UserDefaults.standard
        return [
            "trackCalories": d.object(forKey: "trackCalories") == nil ? true : d.bool(forKey: "trackCalories") ,
            "trackTotalFat": d.object(forKey: "trackTotalFat") == nil ? true : d.bool(forKey: "trackTotalFat") ,
            "trackSaturatedFat": d.object(forKey: "trackSaturatedFat") == nil ? true : d.bool(forKey: "trackSaturatedFat") ,
            "trackTransFat": d.object(forKey: "trackTransFat") == nil ? true : d.bool(forKey: "trackTransFat") ,
            "trackCholesterol": d.object(forKey: "trackCholesterol") == nil ? true : d.bool(forKey: "trackCholesterol") ,
            "trackSodium": d.object(forKey: "trackSodium") == nil ? true : d.bool(forKey: "trackSodium") ,
            "trackTotalCarbs": d.object(forKey: "trackTotalCarbs") == nil ? true : d.bool(forKey: "trackTotalCarbs") ,
            "trackFiber": d.object(forKey: "trackFiber") == nil ? true : d.bool(forKey: "trackFiber") ,
            "trackTotalSugars": d.object(forKey: "trackTotalSugars") == nil ? true : d.bool(forKey: "trackTotalSugars") ,
            "trackAddedSugars": d.object(forKey: "trackAddedSugars") == nil ? true : d.bool(forKey: "trackAddedSugars") ,
            "trackProtein": d.object(forKey: "trackProtein") == nil ? true : d.bool(forKey: "trackProtein")
        ]
    }
    
    @State private var name: String
    @State private var servingSize: Double
    @State private var calories: Int
    @State private var totalFatG: Double
    @State private var saturatedFatG: Double
    @State private var transFat: Double
    @State private var cholesterolG: Double
    @State private var sodiumG: Double
    @State private var totalCarbG: Double
    @State private var fiberG: Double
    @State private var totalSugarG: Double
    @State private var addedSugarG: Double
    @State private var proteinG: Double
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("Name:")
                        TextField("Name", text: $name)
                    }
                    HStack {
                        Text("Serving size:")
                        TextField("Standard serving size", value: $servingSize, format: .number)
                        Text("g")
                    }
                    if showing["trackCalories"]! {
                        HStack {
                            Text("Calories:")
                            TextField("Calories", value: $calories, format: .number)
                        }
                    }
                }
                Section {
                    if showing["trackTotalFat"]! {
                        HStack {
                            Text("Total fat:")
                            TextField("Total fat", value: $totalFatG, format: .number)
                            Text("g")
                        }
                    }
                    Group {
                        if showing["trackSaturatedFat"]!  {
                            HStack {
                                Text("Saturated fat:")
                                TextField("Saturated Fat", value: $saturatedFatG, format: .number)
                                Text("g")
                            }
                        }
                        if showing["trackTransFat"]!  {
                            HStack {
                                Text("Trans fat:")
                                TextField("Trans Fat", value: $transFat, format: .number)
                                Text("g")
                            }
                        }
                    }
                    .padding(.leading)
                    if showing["trackCholesterol"]!  {
                        HStack {
                            Text("Cholesterol:")
                            TextField("Cholesterol", value: $cholesterolG, format: .number)
                            Text("mg")
                        }
                    }
                    if showing["trackSodium"]!  {
                        HStack {
                            Text("Sodium:")
                            TextField("Sodium", value: $sodiumG, format: .number)
                            Text("mg")
                        }
                    }
                    if showing["trackTotalCarbs"]!  {
                        HStack {
                            Text("Total carbohydrates:")
                            TextField("Total carbohydrates", value: $totalCarbG, format: .number)
                            Text("g")
                        }
                    }
                    Group {
                        if showing["trackFiber"]!  {
                            HStack {
                                Text("Dietary fiber:")
                                TextField("Dietary fiber", value: $fiberG, format: .number)
                                Text("g")
                            }
                        }
                        if showing["trackTotalSugars"]!  {
                            HStack {
                                Text("Total sugar:")
                                TextField("Total sugar", value: $totalSugarG, format: .number)
                                Text("g")
                            }
                        }
                        if showing["trackAddedSugars"]!  {
                            HStack {
                                Text("Added sugar:")
                                TextField("Added sugar", value: $addedSugarG, format: .number)
                                Text("g")
                            }
                            .padding(.leading, 30)
                        }
                    }
                    .padding(.leading)
                    if showing["trackProtein"]!  {
                        HStack {
                            Text("Protein:")
                            TextField("Protein", value: $proteinG, format: .number)
                            Text("g")
                        }
                    }
                }
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .navigationTitle("Ingredient")
            .toolbar {
                Button("Save") {
                    dismiss()
                }
            }
        }
    }
    
    init(ingredient: Ingredient) {
        self.ingredient = ingredient
        
        _name = State(initialValue: ingredient.name)
        _servingSize = State(initialValue: ingredient.servingSize)
        _calories = State(initialValue: ingredient.calories)
        _totalFatG = State(initialValue: ingredient.totalFatG)
        _saturatedFatG = State(initialValue: ingredient.saturatedFatG)
        _transFat = State(initialValue: ingredient.transFat)
        _cholesterolG = State(initialValue: ingredient.cholesterolG)
        _sodiumG = State(initialValue: ingredient.sodiumG)
        _totalCarbG = State(initialValue: ingredient.totalCarbG)
        _fiberG = State(initialValue: ingredient.fiberG)
        _totalSugarG = State(initialValue: ingredient.totalSugarG)
        _addedSugarG = State(initialValue: ingredient.addedSugarG)
        _proteinG = State(initialValue: ingredient.proteinG)
    }
}

struct AddIngredientView_Previews: PreviewProvider {
    static var previews: some View {
        AddIngredientView(ingredient: Ingredient.example)
    }
}
