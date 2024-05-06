//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

struct TopBackgroundImg: View {
    @Binding var backgroundImage : Image
    var body: some View {
        ZStack{
            $backgroundImage.wrappedValue
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .blur(radius: 7)

            OverlayView(opacity: 0.8)
            GeometryReader{ geomtry in
                Button(action: {
                    addImageFromGallery()
                }, label: {
                    Image("addImageLight", bundle: .module)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .offset(x: geomtry.size.width - 60, y: 40)
                })
            }

        }
        .clipShape(polygon())
    }

    func addImageFromGallery() {
        print("Open Gallery")
    }
}

#Preview {
    TopBackgroundImg(backgroundImage: .constant(Image("userProfile", bundle: Constants.appConstants.bundle)))
}
