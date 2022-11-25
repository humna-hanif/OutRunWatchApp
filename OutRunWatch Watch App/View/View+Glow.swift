//
//  View+Glow.swift
//  FitLife Watch App
//
//  Created by Humna Hanif on 11/25/22.
//

import SwiftUI

extension View {
    func glow(color: Color = .red, radius: CGFloat = 10) -> some View {
        self
            .shadow(color: color, radius: radius/3)
            .shadow(color: color, radius: radius/3)
            .shadow(color: color, radius: radius/3)

    }
}
