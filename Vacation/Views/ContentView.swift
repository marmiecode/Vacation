//
//  ContentView.swift
//  Vacation
//
//  Created by Martyna Mieczkowska on 09/09/2024.
//

import SwiftUI

struct ContentView: View {
  @StateObject var viewModel = OfferViewModel()
  @State private var showLikedOffers = false
  @State private var showOfferList = false
  
  var body: some View {
    NavigationView {
      VStack {
        if !showOfferList {
          VStack {
            Spacer()
            Image("vac1")
              .resizable()
              .scaledToFit()
              .frame(height: 300)
              .padding()
            
            Text("Discover Your Next Vacation")
              .font(.largeTitle)
              .fontWeight(.bold)
              .multilineTextAlignment(.center)
              .padding()
            
            Spacer()
          }
        } else {
          if showLikedOffers {
            LikedOffersView(viewModel: viewModel)
          } else {
            OfferListView(viewModel: viewModel)
          }
        }
      }
      .navigationTitle("Vacation Offers")
      .toolbar {
        ToolbarItemGroup(placement: .bottomBar) {
          Button(action: {
            showOfferList = true
            showLikedOffers = false
          }) {
            VStack {
              Image(systemName: "magnifyingglass")
              Text("Search")
            }
          }
          Spacer()
          Button(action: {
            showOfferList = true
            showLikedOffers = true
          }) {
            VStack {
              Image(systemName: "heart.fill")
              Text("Favorite")
            }
          }
        }
        ToolbarItem(placement: .navigationBarLeading) {
          if showOfferList {
            Button(action: {
              showOfferList = false
            }) {
              Text("Back")
            }
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
