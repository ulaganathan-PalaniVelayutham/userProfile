//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfileImage: View {

    @State var img : Image? = Image("userProfile", bundle: Constants.appConstants.bundle)
    var size : CGFloat? = 100
    private var b : Bundle = Bundle.module


    public init(img: Image? = Image("userProfile", bundle: Constants.appConstants.bundle), size: CGFloat? = 100) {
        self.img = img
        self.size = size
    }

    public var body: some View {
        VStack {
            if img != nil {
                img!.resizable()
                .frame(width: size!, height: size!)
                .aspectRatio(contentMode: .fit)
                .padding(20)
            }
        }
        .background(
            ProfileFrame(lineWidth: 10.0)
                .rotationEffect(Angle(degrees: 45))
        )
    }
}

#Preview {
    ProfileImage(img: Image("DhoniProfile", bundle:Constants.appConstants.bundle), size: 100)
}
