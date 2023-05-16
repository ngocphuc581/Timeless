//
//  HeaderBarView.swift
//  Timeless
//
//  Created by Zien on 15/05/2023.
//

import SwiftUI

struct HeaderBarView: View {
    @Environment(\.dismiss) var dissmiss
    let title: String
    var body: some View {
        HStack {
            Button {
                dissmiss()
            } label: {
                Image("xMarkCircle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            Spacer()
            Text(title)
                .font(.sfProTextSemibold(size: 17))
                .foregroundColor(.white87)
                .padding(.trailing, 30)
            Spacer()

        }
        .padding(.horizontal, 30)
        .padding(.top, 20)
    }
}

