//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 05/05/24.
//

import SwiftUI

public struct TopView: View {
    @Binding var img : Image

    public init(img: Binding<Image> = .constant(Image("userProfile", bundle: Constants.appConstants.bundle))) {
        self._img = img
    }

    public var body: some View {
        GeometryReader(content: { geometry in
            ZStack{
                TopBackgroundImg(backgroundImage: $img)
                    .frame(height: geometry.size.height)
                    .ignoresSafeArea()
                ProfileImage(img: $img, size: 100)
                    .offset(y: (geometry.size.height * 0.25))
                    .padding(5)
            }
        })
    }
}

#Preview {
    TopView(img: .constant(Image("DhoniProfile", bundle: Constants.appConstants.bundle)))
}
