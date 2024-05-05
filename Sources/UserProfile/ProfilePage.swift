//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfilePage: View {
    var img : String? = "userProfile"
    @State var userName : String? = ""
    @State var email : String? = ""
    @State var mobile : String? = ""

    public init(img: String? = "userProfile", userName: String? = "", email: String? = "", mobile: String? = "") {
        self.img = img
        self.userName = userName
        self.email = email
        self.mobile = mobile
    }

    public var body: some View {
        VStack {
            TopView(img: img!)
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
    ProfilePage()
}
