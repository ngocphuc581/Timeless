//
//  SignUp.swift
//  Timeless
//
//  Created by Zien on 15/05/2023.
//

import SwiftUI

struct SignUp: View {
    @Environment(\.dismiss) var dissmiss
    @State var email = ""
    @State var isValid = true
    @State var showVerify = false
    @State var showVerifyApple = false
    var body: some View {
        VStack {
            headerView
            inputEmailView
                .sheet(isPresented: $showVerify) {
                    VerifyView(title: "Verify", nameLottie: "loading-circle", nameButton: "Open email", method: false)
                        .presentationDetents([.fraction(0.6)])
                        .presentationCornerRadius(30)
                }
                .sheet(isPresented: $showVerifyApple) {
                    VerifyView(title: "Restore Backup", nameLottie: "loadingApple", nameButton: "iCloud", method: true)
                        .presentationDetents([.medium])
                        .presentationCornerRadius(30)
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.sheetBG)
    }
}

extension SignUp {
    var headerView : some View {
        HeaderBarView(title: "Create New Wallet")
    }
    var inputEmailView : some View {
        VStack(spacing: 0) {
            Text("Easy creation")
                .font(.sfProDisplayBold(size: 27))
                .foregroundColor(.white)
                .padding(.top, 30)
                .padding(.bottom, 65)
            TextField("Enter your email", text: $email)
                .padding(.leading, 15)
                .padding(.trailing, 46)
                .frame(height: 51)
                .background(Color.sendTextFieldBG.cornerRadius(15))
                .foregroundColor(Color.white)
                .accentColor(.red)
                .padding(.bottom, 15)
                .textInputAutocapitalization(.never)
                .onChange(of: email) { newValue in
                    if newValue.count >= 5 {
                        isValid = false
                    } else {
                        isValid = true
                    }
                }
            Button {
                showVerify = true
            } label: {
                Text("Next")
                    .frame(width: UIScreen.main.bounds.width - 90, height: 48)
                    .background(Color.showMoreButtonBG.cornerRadius(15))
                    .font(.sfProTextMedium(size: 17))
                    .foregroundStyle(LinearGradient(colors: Color.createWalletBG, startPoint: .top, endPoint: .bottom))
            }
            .disabled(isValid)
            .opacity(isValid ? 0.3 : 1)
            VStack {
                HStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 0.5)
                        .foregroundColor(Color.dividerSignUp)
//                        .padding(20)
                    Text("or sign in with:")
                        .tracking(-0.2)
                        .font(.sfProTextMedium(size: 14))
                        .foregroundColor(Color.white87)
                    Rectangle()
                        .frame(height: 0.5)
                        .foregroundColor(Color.dividerSignUp)
//                        .padding(20)
                }
                .padding(.top, 24)
                .padding(.bottom, 18)
            }
            Button {
                showVerifyApple = true
            } label: {
                Image("apple_signIn")
                    .resizable()
                    .frame(width: 45, height: 45)
            }
            Spacer()
        }
        .padding(.horizontal, 45)
    }
}


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
