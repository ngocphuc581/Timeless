//
//  ContentView.swift
//  Timeless
//
//  Created by Zien on 12/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("hello-string")
                .font(Font.phosphate(size: 20))
                .foregroundColor(Color.chatTextColorBackground)
            Text("introduction-string \("Mario")")
                .font(.custom("Phosphate", fixedSize: 20))
            Text("introduction")
                .font(.system(size: 20))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
