//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfilePage: View {
    @State public var img : Image = Image("userProfile", bundle: Constants.appConstants.bundle)
    @State public var userName : String? = ""
    @State public var email : String? = ""
    @State public var mobile : String? = ""

    public init(img: Image = Image("userProfile", bundle: Constants.appConstants.bundle), userName: String? = "", email: String? = "", mobile: String? = "") {
        self.img = img
        self.userName = userName
        self.email = email
        self.mobile = mobile
    }

    public var body: some View {
        VStack {
            TopView(img: $img)
                .frame(height: 300)
                .padding(.bottom)
            TxtField(placeholder: "User Name", icon: "userIcon", txt: userName!)
            TxtField(placeholder: "E-mail", icon: "emailDark", txt: email!)
            TxtField(placeholder: "Mobile", icon: "mobileDark" ,txt: mobile!)
            Button("Submit") {
                submitTapped()
            }
            .padding()
            Spacer()
        }
    }

    func submitTapped () {
        print(userName!)
        print(email!)
        print(mobile!)
    }
}

#Preview {
    ProfilePage(img: Image("userProfile", bundle: Constants.appConstants.bundle))
}
