//
//  ContentView.swift
//  Metabolog
//
//  Created by MLG on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TrackNutrientsView()
    }
    
    func getDocumentsDirectory() -> URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
