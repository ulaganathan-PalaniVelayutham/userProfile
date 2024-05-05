//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct TxtField: View {
    var placeholder: String? = "placeholder"
    var icon: String? = ""
    @State var txt : String

    public init(placeholder: String? = "place holder", icon: String? = "", txt: String) {
        self.placeholder = placeholder
        self.icon = icon
        self.txt = txt
    }


    public var body: some View {
        ZStack {
            HStack{
                Image(icon!, bundle: .module)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                TextField(placeholder!, text: $txt)
            }
            .padding()
        }
        .background(ProfileFrame(lineWidth: 2, radius: 10))
        .padding(10)



    }
}

#Preview {
    TxtField(placeholder: "E-mail", icon: "emailDark", txt: "")
}
