//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

struct TxtField: View {
    var placeholder: String
    var icon: String? = ""
    @State var txt : String = ""
    var body: some View {
        ZStack {
            HStack{
                Image(icon!, bundle: .module)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                TextField(placeholder, text: $txt)
            }
            .padding()
        }
        .background(ProfileFrame(lineWidth: 2, radius: 10))
        .padding(10)



    }
}

#Preview {
    TxtField(placeholder: "E-mail", icon: "emailDark")
}
