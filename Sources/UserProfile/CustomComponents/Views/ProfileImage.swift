//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfileImage: View {

    var img : String? = "userProfile"
    var size : CGFloat? = 100


    public init(img: String? = "userProfile", size: CGFloat? = 100) {
        self.img = img
        self.size = size
    }

    public var body: some View {
        VStack {
            Image(packageResource: img!, ofType: "png")
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
