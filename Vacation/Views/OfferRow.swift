//
//  OfferRow.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 13/09/2024.
//

import SwiftUI

struct OfferRow: View {
    var offer: Offer
    @State var isLiked: Bool
    var toggleLiked: () -> Void
    
    
    var body: some View {
        HStack {
            ZStack(alignment: .topLeading) {
                TabView {
                    ForEach(offer.image, id: \.self) {
                        imageName in Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .cornerRadius(10)
                    }
                }
                .frame(width: 150, height: 150)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                
                LikeButton(isLiked: $isLiked)
                    .padding([.top, .trailing], 8)
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(offer.hotelName)
                    .bold()
                    .font(.headline)
                
                Text("\(offer.city), \(offer.country)")
                    .bold()
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                
                Text(offer.description.prefix(30) + "...")
                    .font(.caption)
                
                Text("\(offer.price, specifier: "%.2f") $ / week")
                    .bold()
                    .font(.subheadline)
            }
            .padding(.leading, 10)
        }
        .padding()
    }
}



