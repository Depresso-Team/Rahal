//
//  ToursView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 11/09/2023.
//

import SwiftUI

struct ToursView: View {
    // MARK: - PROPERTIES
    @StateObject private var vm = TripViewModel.shared
    @State private var searchText = ""

    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    ForEach(vm.tripDetails) { trip in
                        TourCardExtended(image: trip.photo ?? "",
                                         tourName: trip.name,
                                         price: trip.price,
                                         desc: trip.description,
                                         rating: trip.rate,
                                         location: trip.location,
                                         duration: trip.duration)
                    }
                }
                .padding()
            }
            .navigationTitle("Tours")
            .navigationBarTitleDisplayMode(.automatic)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
        .alert(isPresented: Binding(
            get: { vm.showAlert },
            set: { newValue in vm.showAlert = newValue }
        )) {
            Alert(
                title: Text("Error"),
                message: Text(vm.alertMessage),
                dismissButton: .default(Text("OK")) {
                    // Handle the alert dismissal if needed
                }
            )
        }
    }
}

struct ToursView_Previews: PreviewProvider {
    static var previews: some View {
        ToursView()
    }
}
