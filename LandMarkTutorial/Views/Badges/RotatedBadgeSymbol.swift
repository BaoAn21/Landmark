//
//  RotatedBadgeSymbol.swift
//  LandMarkTutorial
//
//  Created by Trần Ân on 23/6/24.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
            .rotationEffect(angle,anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 10))
}
