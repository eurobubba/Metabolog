//
//  TrackNutrientsView.swift
//  Metabolog
//
//  Created by MLG on 7/4/22.
//

import SwiftUI

struct TrackNutrientsView: View {
    @AppStorage("trackCalories") private var trackCalories = true
    @AppStorage("trackTotalFat") private var trackTotalFat = true
    @AppStorage("trackSaturatedFat") private var trackSaturatedFat = false
    @AppStorage("trackTransFat") private var trackTransFat = false
    @AppStorage("trackCholesterol") private var trackCholesterol = false
    @AppStorage("trackSodium") private var trackSodium = false
    @AppStorage("trackTotalCarbs") private var trackTotalCarbs = true
    @AppStorage("trackFiber") private var trackFiber = false
    @AppStorage("trackTotalSugars") private var trackTotalSugars = false
    @AppStorage("trackAddedSugars") private var trackAddedSugars = false
    @AppStorage("trackProtein") private var trackProtein = true
    
    var body: some View {
        NavigationView {
            List {
                Toggle("Calories", isOn: $trackCalories)
                Group {
                    Toggle("Total Fat", isOn: $trackTotalFat)
                    Group {
                        Toggle("Saturated Fat", isOn: $trackSaturatedFat)
                        Toggle("Trans Fat", isOn: $trackTransFat)
                    }
                    .padding(.leading)
                }
                Toggle("Cholesterol", isOn: $trackCholesterol)
                Toggle("Sodium", isOn: $trackSodium)
                Group {
                    Toggle("Total Carbohydrate", isOn: $trackTotalCarbs)
                    Group {
                        Toggle("Dietary Fiber", isOn: $trackFiber)
                        Toggle("Total Sugars", isOn: $trackTotalSugars)
                        Toggle("Added Sugars", isOn: $trackAddedSugars)
                            .padding(.leading, 30)
                    }
                    .padding(.leading)
                }
                Toggle("Protein", isOn: $trackProtein)
                Section {
                    NavigationLink {
                        AddIngredientView(ingredient: Ingredient.example)
                    } label: {
                        Text("Show Ingredient View")
                    }
                }
            }
            .navigationTitle("Track Nutrients")
        }
    }
}

struct TrackNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        TrackNutrientsView()
    }
}
