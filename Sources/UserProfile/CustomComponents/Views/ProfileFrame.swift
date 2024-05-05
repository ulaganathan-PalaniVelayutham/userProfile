//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

struct ProfileFrame: View {
    var lineWidth : CGFloat? = 5.0
    var radius : CGFloat? = 20.0
    var body: some View {
        RoundedRectangle(cornerRadius: radius!)
            .stroke(
                LinearGradient(colors: [.blue, .green, .yellow, .red], startPoint: .leading, endPoint: .trailing), lineWidth: lineWidth!
            )
    }
}

#Preview {
    ProfileFrame(lineWidth: 10.0)
}
