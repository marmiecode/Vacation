//
//  IconButton.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 13/09/2024.
//

import SwiftUI

struct IconButton: View {
    var title: String
    var systemImageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: systemImageName)
                Text(title)
            }
            .padding()
            .background(Color.pink.opacity(0.2))
            .cornerRadius(10)
        }
    }
}


