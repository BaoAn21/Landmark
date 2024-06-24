//
//  LandmarkList.swift
//  LandMarkTutorial
//
//  Created by Trần Ân on 22/6/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView {
            
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorite only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("select")
        }
        
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
