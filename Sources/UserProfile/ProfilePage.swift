//
//  SwiftUIView.swift
//  
//
//  Created by ulaganathan.pv on 04/05/24.
//

import SwiftUI

public struct ProfilePage: View {
    @Binding public var img : Image
    @Binding public var userName : String?
    @Binding public var email : String?
    @Binding public var mobile : String?

    public init(img: Binding<Image>, userName: Binding<String?> = Binding.constant(""), email: Binding<String?> = Binding.constant(""), mobile: Binding<String?> = Binding.constant("")) {
        self._img = img
        self._userName = userName
        self._email = email
        self._mobile = mobile
    }

    public var body: some View {
        VStack {
            TopView(img: $img)
                .frame(height: 300)
                .padding(.bottom)
            TxtField(placeholder: "User Name", icon: "userIcon", txt: $userName.wrappedValue!)
            TxtField(placeholder: "E-mail", icon: "emailDark", txt: $email.wrappedValue!)
            TxtField(placeholder: "Mobile", icon: "mobileDark" ,txt: $mobile.wrappedValue!)
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
    ProfilePage(img:.constant(Image("DhoniProfile", bundle: Constants.appConstants.bundle)))
}
