//
//  TourGuideView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 10/09/2023.
//

import SwiftUI

//struct DumyGrid: Identifiable {
//    var id: Int
//    let image: String
//    let name: String
//    let rating: Double
//    let location: String
//}

struct TourGuideView: View {
    // MARK: - Variables
    @StateObject var vm = TourGuideViewModel.shared
    
    let grids: [GridItem] = [
        .init(.flexible()),
        .init(.flexible())
    ]    
    // MARK: - BODY
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                SearchBar()
                HStack {
                    Text("Tour Guides")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    Spacer()
                }
                
                LazyVGrid(columns: grids, spacing: 16) {
                    ForEach(vm.guides) { guide in
                        GuideCard(image: guide.personal_photo,
                                  guideName: "Abdalarhamn",
                                  rating: guide.rate,
                                  location: guide.address)
                    }
                }
                .padding()
            }
        }
    }
}

struct TourGuideView_Previews: PreviewProvider {
    static var previews: some View {
        TourGuideView()
    }
}
