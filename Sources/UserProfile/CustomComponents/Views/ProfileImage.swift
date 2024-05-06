//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfileImage: View {

    @Binding var img : Image
    var size : CGFloat? = 100



    public init(img: Binding<Image> = .constant(Image("userProfile", bundle: Constants.appConstants.bundle)), size: CGFloat? = 100) {
        self._img = img
        self.size = size
    }

    public var body: some View {
        VStack {
                $img.wrappedValue
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
    ProfileImage(img: .constant(Image("userProfile", bundle: Constants.appConstants.bundle)), size: 100)
}
