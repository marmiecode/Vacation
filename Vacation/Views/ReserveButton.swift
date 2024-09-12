//
//  CustomButton.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 11/09/2024.
//

import SwiftUI

struct ReserveButton: View {
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text("Reserve")
                .bold()
                .frame(minWidth: 200, maxWidth: 50)
                .foregroundColor(.black)
                .background(LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.7), Color.indigo.opacity(0.7)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ReserveButton(action: {
        print("Kliknity")
    })
}
