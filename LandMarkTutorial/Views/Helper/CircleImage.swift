//
//  CircleImage.swift
//  LandMarkTutorial
//
//  Created by Trần Ân on 22/6/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white,lineWidth: 10)
            }
            .shadow(radius: 20)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
