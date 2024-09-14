//
//  OfferListView.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 14/09/2024.
//

import SwiftUI



struct OfferListView: View {
  @ObservedObject var viewModel: OfferViewModel
  
  var body: some View {
    List(viewModel.offers) { offer in
      NavigationLink(destination: OfferDetailView(offer: offer, isLiked: viewModel.likedOffers.contains(offer.id), toggleLiked: {
        if viewModel.likedOffers.contains(offer.id) {
          viewModel.unlikeOffer(offer)
        } else {
          viewModel.likeOffer(offer)
        }
      })) {
        OfferRow(
          offer: offer,
          isLiked: viewModel.likedOffers.contains(offer.id),
          toggleLiked: {
            if viewModel.likedOffers.contains(offer.id) {
              viewModel.unlikeOffer(offer)
            } else {
              viewModel.likeOffer(offer)
            }
          }
        )
      }
    }
  }
}



