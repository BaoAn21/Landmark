//
//  LandmarkRow.swift
//  LandMarkTutorial
//
//  Created by Trần Ân on 22/6/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        
    }
}

#Preview {
    LandmarkRow(landmark: ModelData().landmarks[0])
}
