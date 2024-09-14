//
//  LikedOffersView.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 14/09/2024.
//

import SwiftUI

struct LikedOffersView: View {
  @ObservedObject var viewModel: OfferViewModel
  
  var body: some View {
    List(viewModel.likedOffers.map { id in viewModel.offer(for: id) }) { offer in
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
