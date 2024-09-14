//
//  OfferDetailView.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 14/09/2024.
//

import SwiftUI

struct OfferDetailView: View {
    var offer: Offer
    var isLiked: Bool
    var toggleLiked: () -> Void

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                TabView {
                    ForEach(offer.image, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                    }
                }
                .frame(height: 300)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                
                VStack(alignment: .leading, spacing: 16) {
                    Text(offer.hotelName)
                        .font(.largeTitle)
                        .bold()
                    
                    Text("\(offer.city), \(offer.country)")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Text(offer.description)
                        .font(.body)
                    
                    Text("\(offer.price, specifier: "%.2f") $ / week")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        LikeButton(isLiked: Binding(
                            get: { isLiked },
                            set: { _ in toggleLiked() }
                        ))
                        
                        Spacer()
                        
                        ReserveButton {
                            
                        }
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle("Offer Details", displayMode: .inline)
    }
}
