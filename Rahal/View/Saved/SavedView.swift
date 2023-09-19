//
//  SavedView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct SavedView: View {
    // MARK: - PROPERTIES
    @StateObject private var vm = TripViewModel.shared

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
            .navigationTitle("Saved")
            .navigationBarTitleDisplayMode(.automatic)
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

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
