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
            VStack{
                SearchBar()
                
                HStack {
                    Text("Trips")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    Spacer()
                }

                TourCardExtended(imageName: "pyramids", tourName: "Pyramids", rating: 4.5, location: "Giza Plateau", duration: "1 Day")
                TourCardExtended(imageName: "nubia", tourName: "Nubia", rating: 4.5, location: "Aswan", duration: "1 Day")
                TourCardExtended(imageName: "sphinx", tourName: "Giza Plateau", rating: 4.5, location: "Giza Plateau", duration: "1 Day")
                TourCardExtended(imageName: "nubia", tourName: "Nubia", rating: 4.5, location: "Aswan", duration: "1 Day")
                
            }
        }
    }
}

struct ToursView_Previews: PreviewProvider {
    static var previews: some View {
        ToursView()
    }
}
