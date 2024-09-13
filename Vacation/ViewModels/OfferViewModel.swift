//
//  OfferViewModel.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 09/09/2024.
//

import Foundation
import Combine

class OfferViewModel:ObservableObject {
  @Published var offers: [Offer] = []
  @Published var likedOffers: Set<UUID> = []
  
  func vacationOffer() {
    offers = [
      Offer(hotelName: "Alpine Lodge", city: "Chamonix", country: "France", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. " , price: 1600, image: ["zdj1", "zdj2"]),
      Offer(hotelName: "Sunny Resort", city: "Barcelona", country: "Spain", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.", price: 900, image: ["zdj3", "zdj4"]),
      Offer(hotelName: "Mountain Retreat", city: "Zakopane", country: "Poland", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.", price: 750, image: ["zdj5", "zdj6"]),
      Offer(hotelName: "Beachfront Resort", city: "Malibu", country: "USA", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ", price: 1800, image: ["zdj7", "zdj8"]),
      Offer(hotelName: "City Lights Hotel", city: "New York", country: "USA", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium", price: 1500, image: ["zdj9", "zdj10"]),
      Offer(hotelName: "Ocean View Inn", city: "San Diego", country: "USA", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.", price: 1300, image: ["zdj11", "zdj12"]),
      Offer(hotelName: "Luxury Lodge", city: "Queenstown", country: "New Zealand", description: "orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.", price: 1700, image: ["zdj13", "zdj14"]),
      Offer(hotelName: "Serene Stay", city: "Sedona", country: "USA", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", price: 1000, image: ["hotel46", "hotel47", "hotel48"])
    ]
  }
  
  func likeOffer(_ offer: Offer) {
    likedOffers.insert(offer.id)
  }
  
  func unlikeOffer(_ offer: Offer) {
    likedOffers.remove(offer.id)
  }
  
  func offer(for id: UUID) -> Offer {
    return offers.first {$0.id == id }!
  }
