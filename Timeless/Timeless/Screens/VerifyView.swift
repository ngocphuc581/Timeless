//
//  VerifyView.swift
//  Timeless
//
//  Created by Zien on 15/05/2023.
//

import SwiftUI

struct VerifyView: View {
    let title: String
    let nameLottie: String
    let nameButton: String
    let method: Bool
    @State var showRestoreView: Bool = false
    var body: some View {
        VStack(spacing: 0) {
            RoundedRectangle(cornerRadius: .infinity)
                .frame(width: 40, height: 5)
                .foregroundColor(Color.white60)
                .padding(.top, 10)
                .padding(.bottom, 25)
            Text(title)
                .foregroundColor(Color.white)
                .font(.sfProDisplayBold(size: 28))
                .padding(.bottom, 11)
            if method { appleForm } else { googleForm }
            method ? Spacer() : nil
            Button {
                showRestoreView = true
            } label: {
                Text(nameButton)
                    .foregroundStyle(LinearGradient(colors: Color.createWalletBG, startPoint: .top, endPoint: .bottom))
                    .frame(width: UIScreen.main.bounds.width - 65, height: 48)
                    .background(Color.showMoreButtonBG.cornerRadius(24))
            }
            .padding(.top, 14)
            method ? nil : Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.sheetBG)
        .sheet(isPresented: $showRestoreView) {
            RestoreICloud()
                .presentationDetents([.large])
        }
    }
}

extension VerifyView {
    var googleForm: some View {
        VStack {
            VStack {
                Text("We emailed a link to ngocphuc0001@gmail.com.")
                    .fixedSize(horizontal: false, vertical: true)
                    
                Text("Verify the email to continue.")
            }
            .foregroundColor(.white)
            .accentColor(.white)
            .frame(width: UIScreen.main.bounds.width - 90)
            .padding(.bottom, 25)
            .padding(.horizontal, 36)
            LottieView(name: nameLottie, loopMode: .loop, animationSpeed: 1)
                .scaleEffect(0.2)
                .frame(height: UIScreen.main.bounds.height * 0.13)
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Image("lockShieldGradient")
                    Text("Fully encrypted")
                }
                .foregroundColor(Color.white.opacity(0.8))
                .font(.sfProTextBold(size: 15))
                HStack {
                    Text("To protect your privacy, we only store an encrypted of your email address and the address is")
                        .font(.sfProTextLight(size: 13))
                    +
                    Text(" never ")
                        .font(.sfProTextBold(size: 13))
                    +
                    Text("shared with anyone.")
                        .font(.sfProTextLight(size: 13))
                }
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(Color.white60)
            }
            .padding(10)
            .frame(width: UIScreen.main.bounds.width - 65)
            .background(Color.keyboardAccessoryBG
                .cornerRadius(10)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.tabDeselectColor, lineWidth: 1)
                }))
        }
    }
    
    var appleForm: some View {
        VStack {
            Text("Restore from iCloud")
                .font(.sfProTextLight(size: 13))
                .foregroundColor(Color.white60)
            LottieView(name: nameLottie, loopMode: .loop, animationSpeed: 1)
                .scaleEffect(0.2)
                .frame(height: UIScreen.main.bounds.height * 0.13)
                .padding(.top, 40)
        }
        .frame(alignment: .bottom)
    }
}
