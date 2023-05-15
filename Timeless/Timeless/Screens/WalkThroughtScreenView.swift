//
//  WalkThroughtScreenView.swift
//  Timeless
//
//  Created by Zien on 14/05/2023.
//

import SwiftUI

struct WalkThroughtScreenView: View {
    var body: some View {
        VStack {
            VStack {
                MediaResourceView
            }
            bottomView
        }
        .background(.black)
    }
}

extension WalkThroughtScreenView {
    var MediaResourceView: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(1 ,contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width - 35)
                    .clipped()
            }
            .padding(.top, 30)
            ZStack(alignment: .top) {
                VStack(spacing: 0) {
                    Text("abcdefgh")
                        .font(.sfProTextBold(size: 30))
                        .foregroundColor(.white)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 23)
                    Text("cznbxcnmuqwy jkhsd zbnxc")
                        .font(.sfProDisplayMedium(size: 15))
                        .foregroundColor(Color.white.opacity(0.8))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                }
                .background(.blue)
            }
            Spacer(minLength: 0)
        }
    }
    
    var bottomView: some View {
        VStack {
            HStack {
                Spacer()
                Text("Create a New Wallet")
                    .foregroundStyle(LinearGradient(colors: Color.createWalletBG, startPoint: .top, endPoint: .bottom))
                    .font(.sfProTextMedium(size: 17))
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width - 64, height: 48)
            .background(Color.showMoreButtonBG.cornerRadius(24))
            Button {
                
            } label: {
                Text("I already have one")
                    .foregroundColor(Color.white.opacity(0.8))
                    .font(.sfProTextMedium(size: 14))
            }
        }
        .padding(.top, 28)
        .padding(.bottom, 19)
        .frame(maxWidth: .infinity, alignment: .bottom)
        .background(.red)
    }
}

struct WalkThroughtScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WalkThroughtScreenView()
    }
}
