//
//  SecureFieldView.swift
//  Timeless
//
//  Created by Zien on 15/05/2023.
//

import SwiftUI

struct SecureFieldView: View {
    @Binding var data: String
    var body: some View {
        SecureField("", text: $data)
            .foregroundColor(.white)
    }
}

