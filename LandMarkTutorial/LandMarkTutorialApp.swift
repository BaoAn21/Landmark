//
//  LandMarkTutorialApp.swift
//  LandMarkTutorial
//
//  Created by Trần Ân on 19/6/24.
//

import SwiftUI

@main
struct LandMarkTutorialApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
