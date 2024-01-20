//
//  FeedCell.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 17.01.2024.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    var body: some View {
        
        ZStack {
            VideoPlayer (player: AVPlayer(url: URL(string: post.videoUrl)!))
                .containerRelativeFrame([.horizontal, .vertical])
                
            
            VStack {
                Spacer()
                
                HStack (alignment: .bottom) {
                    VStack (alignment: .leading) {
                        Text("AB.Waris")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for takeoff!!!!")
                    }.font(.subheadline)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    VStack (spacing: 28) {
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        Button(action: {}, label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("12")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                            }
                            
                        })
                        
                        Button(action: {}, label: {
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                    .foregroundStyle(.white)
                                Text("12")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                
                        
                            }
                            
                            
                        })
                        
                        Button(action: {}, label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                                Text("12")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                            }
                            
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28, height: 28)
                                .foregroundStyle(.white)
                            
                        })
                    }
                }.padding(.bottom, 80)
            }.padding()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl: ""))
}
