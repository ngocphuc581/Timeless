//
//  RestoreICloud.swift
//  Timeless
//
//  Created by Zien on 15/05/2023.
//

import SwiftUI



struct RestoreICloud: View {
    @State var password: String = ""
    @State var isValid: Bool = true
    @State var placeHolder: Bool = true
    @State var hidePassword: Bool = true
    @State var isActive: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    .frame(height: 50)
                HeaderBarView(title: "Restore from iCloud")
                headerTitle
                Spacer()
                inputPassword
                Button {
                    
                } label: {
                    NavigationLink(destination: WalletView(), isActive: $isActive) {
                        HStack{
                            Image(systemName: "arrow.counterclockwise.icloud")
                            Text("Restore from iCloud")
                        }
                            .frame(width: UIScreen.main.bounds.width - 90, height: 48)
                            .background(Color.showMoreButtonBG.cornerRadius(30))
                            .font(.sfProTextMedium(size: 17))
                            .foregroundStyle(LinearGradient(colors: Color.createWalletBG, startPoint: .top, endPoint: .bottom))
                    }
                }
                .disabled(isValid)
                .opacity(isValid ? 0.3 : 1)
                Spacer()
                Spacer()
            }
            .frame(height: UIScreen.main.bounds.height)
            .background(Color.sheetBG)
            .interactiveDismissDisabled(true)
        }
    }
}


extension RestoreICloud {
    var headerTitle: some View {
        VStack {
            Text("Enter passphrase")
                .font(.sfProTextBold(size: 27))
                .foregroundColor(.white)
                .padding(.top, 10)
                .padding(.bottom, 10)
            Text("To restore your wallet, enter the encryption passphrase you had entered during backup")
                .font(.sfProTextLight(size: 14))
                .foregroundColor(Color.white60)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 28)
        }
    }
    
    var inputPassword: some View {
        Rectangle()
            .overlay(content: {
                ZStack(alignment: .leading) {
                    placeHolder ? Text("Backup password")
                        .foregroundColor(.white.opacity(0.2)) : nil
                    if hidePassword {
                        SecureFieldView(data: $password)
                            .onChange(of: password) { newValue in
                                if newValue.count > 0 {
                                    placeHolder = false
                                } else {
                                    placeHolder = true
                                }
                                if newValue.count >= 5 {
                                    isValid = false
                                } else {
                                    isValid = true
                                }
                            }
                    } else {
                        TextFieldView(data: $password)
                            .onChange(of: password) { newValue in
                                if newValue.count > 0 {
                                    placeHolder = false
                                } else {
                                    placeHolder = true
                                }
                                if newValue.count >= 5 {
                                    isValid = false
                                } else {
                                    isValid = true
                                }
                            }
                    }
                }
            })
            .foregroundColor(Color.sendTextFieldBG)
            .padding(.leading, 15)
            .padding(.trailing, 30)
            .overlay(alignment: .trailing) {
                Button {
                    hidePassword.toggle()
                } label: {
                    Image(systemName: hidePassword ? "eye" : "eye.slash")
                        .foregroundColor(.white)
                }

            }
            .padding(.trailing, 16)
            .frame(height: 51)
            .background(Color.sendTextFieldBG.cornerRadius(30))
            .padding(.bottom, 15)
            .textInputAutocapitalization(.never)
            .padding(.horizontal, 45)
    }
}
