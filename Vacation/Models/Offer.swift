//
//  Offer.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 09/09/2024.
//

import Foundation

struct Offer: Identifiable {
    let id = UUID()
    var hotelName: String
    var city: String
    var country: String
    var description: String
    var price: Double
    var image: [String]
}
