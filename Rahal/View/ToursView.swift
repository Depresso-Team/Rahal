//
//  ToursView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 11/09/2023.
//

import SwiftUI

struct ToursView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack (spacing: 20){
                SearchBar()
                
                HStack {
                    Text("Trips")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    Spacer()
                }
                
                TourCard(imageName: "pyramids", tourName: "Giza Plateau", rating: 4.5, location: "Giza Plateau", duration: "1 Day")
                
                TourCard(imageName: "nubia", tourName: "Nubia", rating: 4.5, location: "Aswan", duration: "1 Day")
                TourCard(imageName: "sphinx", tourName: "Giza Plateau", rating: 4.5, location: "Giza Plateau", duration: "1 Day")
            }
        }
    }
}

struct ToursView_Previews: PreviewProvider {
    static var previews: some View {
        ToursView()
    }
}
