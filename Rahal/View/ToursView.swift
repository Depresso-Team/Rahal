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
                
                TourCardExtended(imageName: "pyramids", tourName: "Giza Pyramids" ,price: 360, desc: "In the shadow of the Giza  Pyramids..." ,rating: 4.5,location:"Giza Plateau", duration: 1)
                
                TourCardExtended(imageName: "nubia", tourName: "Nubia" ,price: 360, desc: "In the shadow of the Giza  nubia..." ,rating: 4.5,location:"Aswan", duration: 1)
                
                TourCardExtended(imageName: "sphinx", tourName: "Giza Plateau" ,price: 360, desc: "In the shadow of the Giza sphinx..." ,rating: 4.5,location:"Giza Plateau", duration: 1)

                TourCardExtended(imageName: "nubia", tourName: "Nubia" ,price: 360, desc: "In the shadow of the Giza  nubia..." ,rating: 4.5,location:"Aswan", duration: 1)
                
            }
        }
    }
}

struct ToursView_Previews: PreviewProvider {
    static var previews: some View {
        ToursView()
    }
}
