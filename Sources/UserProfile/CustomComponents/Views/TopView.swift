//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 05/05/24.
//

import SwiftUI

public struct TopView: View {
    @State var img : Image? = Image("userProfile", bundle: Constants.appConstants.bundle)

    public init(img: Image? = Image("userProfile", bundle: Constants.appConstants.bundle)) {
        self.img = img
    }

    public var body: some View {
        GeometryReader(content: { geometry in
            ZStack{
                TopBackgroundImg(backgroundImage: img!)
                    .frame(height: geometry.size.height)
                    .ignoresSafeArea()
                ProfileImage(img: img, size: 100)
                    .offset(y: (geometry.size.height * 0.25))
                    .padding(5)
            }
        })
    }
}

#Preview {
    TopView(img: Image("DhoniProfile", bundle: .module))
}
