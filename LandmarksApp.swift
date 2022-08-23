//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Giovanni Almeida Soares on 18/08/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
