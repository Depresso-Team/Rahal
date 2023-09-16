//
//  TourGuideView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 10/09/2023.
//

import SwiftUI

struct TourGuideView: View {
    // MARK: - PROPERTIES
    @StateObject var vm = TourGuideViewModel.shared
    @State private var searchText = ""
    
    let grids: [GridItem] = [
        .init(.flexible()),
        .init(.flexible())
    ]    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    LazyVGrid(columns: grids, spacing: 14) {
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
            .navigationTitle("Tour Guides")
            .navigationBarTitleDisplayMode(.automatic)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

struct TourGuideView_Previews: PreviewProvider {
    static var previews: some View {
        TourGuideView()
    }
}
