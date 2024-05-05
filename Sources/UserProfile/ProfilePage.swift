//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfilePage: View {
    var img : String!
    @State var userName : String = ""
    @State var email : String = ""
    @State var mobile : String = ""
    public var body: some View {
        VStack {
            TopView(img: img)
                .frame(height: 300)
                .padding(.bottom)
            TxtField(placeholder: "User Name", icon: "userIcon", txt: userName)
            TxtField(placeholder: "E-mail", icon: "emailDark", txt: email)
            TxtField(placeholder: "Mobile", icon: "mobileDark" ,txt: mobile)
            Button("Submit") {
                submitTapped()
            }
            .padding()
            Spacer()
        }
    }

    func submitTapped () {

    }
}

#Preview {
    ProfilePage(img: "userProfile")
}