//
//  IconButton.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 11/09/2024.
//

import SwiftUI

struct LikeButton: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button(action: {
            isLiked.toggle()
        }) {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(isLiked ? .pink : .clear)
                .overlay(
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .opacity(isLiked ? 0 : 1)
                )
        }
    }
}


