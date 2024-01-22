//
//  LoginView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 22.01.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
       
        NavigationStack {
            VStack {
                
                Image(.tiktok)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Enter Your Email", text: $email
                    ).textInputAutocapitalization(.never)
                        .modifier(StandardTextFiledModifier())
                    SecureField("Enter Your password", text: $password)
                        .modifier(StandardTextFiledModifier())
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
