//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

struct TopBackgroundImg: View {
    var backgroundImage : String!
    var body: some View {
        ZStack{
            Image(backgroundImage, bundle: .module)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .blur(radius: 7)
            OverlayView(opacity: 0.8)
        }
        .clipShape(polygon())
    }
}

#Preview {
    TopBackgroundImg(backgroundImage: "DhoniProfile")
}
