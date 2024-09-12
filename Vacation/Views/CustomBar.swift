//
//  CustomBar.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 12/09/2024.
//

import SwiftUI

struct CustomBar<Content: View> : View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
        }
        .padding()
        .background(Color.pink.opacity(0.2))
        .cornerRadius(10)
    }
}



