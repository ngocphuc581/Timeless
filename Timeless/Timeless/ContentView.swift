//
//  ContentView.swift
//  Timeless
//
//  Created by Zien on 12/05/2023.
//

import SwiftUI
import AVKit
import AVFoundation

struct ContentView: View {
    func test() {
        guard let path = Bundle.main.url(forResource: "splash", withExtension: "mp4") else {
            print("file mp4 not found")
            return
        }
        print("has data")
    }
    var body: some View {
        ZStack {
            player(player1: AVPlayer(url: Bundle.main.url(forResource: "splash", withExtension: "mp4")!))
                .frame(width: 300, height: 300)
            
        }
        .ignoresSafeArea()
    }
}

extension ContentView {
    struct player : UIViewControllerRepresentable {
        let player1 : AVPlayer
        func makeUIViewController(context: Context) -> UIViewControllerType {
            let controller = UIViewControllerType()
            controller.player = player1
            controller.view.backgroundColor = .clear
            controller.showsPlaybackControls = false
            controller.entersFullScreenWhenPlaybackBegins = true
            return controller
            
        }
        func updateUIViewController(_ uIViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
