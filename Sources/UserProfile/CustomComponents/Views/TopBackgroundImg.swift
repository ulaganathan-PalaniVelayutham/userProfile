//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

struct TopBackgroundImg: View {
    @State var backgroundImage : Image?
    var body: some View {
        ZStack{
            if backgroundImage != nil {
                backgroundImage!.resizable()
                    .aspectRatio(contentMode: .fit)
                    .blur(radius: 7)
            }

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
    TopBackgroundImg(backgroundImage: Image("userProfile", bundle: .module))
}
