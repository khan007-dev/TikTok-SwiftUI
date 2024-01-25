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
    @StateObject var viewModel = LoginViewModel(authService: AuthService())
    var body: some View {
       
        NavigationStack {
            VStack {
                Spacer()
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
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button(action: {
                    Task { await    viewModel.login(withEmail: email, password: password)}
                }, label: {
                    Text("Login")
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
                
                NavigationLink {
                    RegisterView()
                } label: {
                    
                    HStack (spacing: 3) {
                        Text("Don't have an account")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical)
                }

            

            }
        }
    }
}

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && password.isEmpty
    }
}
#Preview {
    LoginView()
}
