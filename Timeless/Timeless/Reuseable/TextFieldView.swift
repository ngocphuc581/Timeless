//
//  TextField.swift
//  Timeless
//
//  Created by Zien on 15/05/2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var data: String
    var body: some View {
    TextField("", text: $data)
        .foregroundColor(.white)
       
    }
}

