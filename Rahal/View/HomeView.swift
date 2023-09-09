//
//  HomeView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                VStack (alignment: .leading){
                    
                    // SEARCH BAR
                    SearchBar()
                    
                    // SLIDER SECTION
                    
                    // TOP FIVE TRIPS TITLES SECTION
                    HStack () {
                        Text("Top Five Trips").bold().font(.system(size: 20))
                        Spacer()
                        Text("See All").foregroundColor(.secondary)
                    }.padding()
                    
                    // TOP FIVE TRIPS CARDS SECTION
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 26) {
                            TripCard(imageName: "pyramids", tripName: "Giza Plateau", rating: 4.5, location: "Giza, Egypt", duration: "1 Day")
                            
                            TripCard(imageName: "nubia", tripName: "Nubia Adventure", rating: 4.2, location: "Nubia, Sudan", duration: "2 Days")
                        }.padding()
                        }
                    
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
