//
//  VideoPlayerView.swift
//  Africa
//
//  Created by jhunderdog on 2022/01/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"), videoOverlay: {
//               Text(videoTitle)
            })
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                    , alignment: .topLeading
                )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
