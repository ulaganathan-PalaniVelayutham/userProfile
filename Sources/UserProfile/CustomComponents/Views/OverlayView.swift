//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct OverlayView: View {
    var opacity : Double? = 1.0
    var overlayColour : Color? = .black
    public var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .frame(width: geometry.size.width, height: geometry.size.height)
                .foregroundColor(overlayColour?.opacity(opacity!))
        }


    }
}

#Preview {
    OverlayView(opacity: 0.5, overlayColour: .blue)
}
