//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfileImage: View {

    @State var img : String!
    var size : CGFloat? = 100

    public var body: some View {
        ZStack {
            Image(img, bundle: .module)
                .resizable()
                .frame(width: size!, height: size!)
                .aspectRatio(contentMode: .fit)
                .padding(20)
        }
        .background(
            ProfileFrame(lineWidth: 10.0)
                .rotationEffect(Angle(degrees: 45))
        )
    }
}

#Preview {
    ProfileImage(img: "DhoniProfile", size: 100)
}
