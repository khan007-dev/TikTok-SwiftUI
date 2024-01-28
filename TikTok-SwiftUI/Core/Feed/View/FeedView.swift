//
//  FeedView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 17.01.2024.
//

import SwiftUI
import AVKit
struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    var body: some View {
        
        ScrollView {
            LazyVStack (spacing: 0) {
                ForEach(viewModel.posts) {
                    post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear {
                            playInitialVideoIfnecessary()
                        }
                }
            }
            .scrollTargetLayout()
            
        }.onAppear {
            player.play()
        }
        .onDisappear() {
            player.pause()
        }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            playerVideOnChangeofScrollPosition(postId: newValue)
            
        }
    }
    
    func playInitialVideoIfnecessary() {
        
        guard scrollPosition == nil,
                let post = viewModel.posts.first,
              player.currentItem == nil else { return}
        
        let item = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: item)
        
    }
    
    func playerVideOnChangeofScrollPosition(postId: String?) {
        
        guard let currentPost = viewModel.posts.first(where: {$0.id == postId}) else {return}
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        
        player.replaceCurrentItem(with: playerItem)
    }
}



#Preview {
    FeedView()
}
