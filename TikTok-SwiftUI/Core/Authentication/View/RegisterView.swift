//
//  RegisterView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 22.01.2024.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: RegisterationViewModel
    
    private let authService: AuthService
    
    init(authService: AuthService)  {
        self.authService = authService
        self._viewModel = StateObject(wrappedValue: RegisterationViewModel(authService: authService))
    }
    var body: some View {
    
        
        VStack {
            Spacer()
            Image(.tiktok)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
       
                TextField("Enter Your Email", text: $email
                ).textInputAutocapitalization(.never)
                    .modifier(StandardTextFiledModifier())
                SecureField("Enter Your password", text: $password)
                    .modifier(StandardTextFiledModifier())
            
            TextField("Enter Your Full Name", text: $userName
            ).textInputAutocapitalization(.never)
                .modifier(StandardTextFiledModifier())
            
            TextField("Enter Your User name", text: $fullName
            ).textInputAutocapitalization(.never)
                .modifier(StandardTextFiledModifier())
            
            Button(action: {
                
                Task {
                    await viewModel.createUser(withEmail: email,
                                               password: password,
                                               username: userName,
                                               fullname: fullName)
                }
                
            }, label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 50)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
            })
            .padding(.vertical)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1 : 0.7)
            
            Spacer()
            Divider()
            Button(action: {
                dismiss()
            }, label: {
                HStack (spacing: 3) {
                    Text("Already have an account")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding(.vertical)
               
                
            })
            
        }
        .navigationBarBackButtonHidden()
    }
}

extension RegisterView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && !fullName.isEmpty
        && !userName.isEmpty
    }
}
#Preview {
    RegisterView(authService: AuthService())
}
