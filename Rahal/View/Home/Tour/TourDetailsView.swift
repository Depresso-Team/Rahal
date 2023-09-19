//
//  TourDetailsView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 14/09/2023.
//

import SwiftUI

struct TourDetailsView: View {
    // MARK: - PROPERTIES
    @StateObject private var vm = TripDetailsViewModel.shared
    var tourId: Int
    @State private var selectedSegment = 0
    let tourImages: [String] = ["abuSimbleTemple", "sphinx"]
    
    // MARK: - BODY
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                
                TabView {
                    AsyncImage(url: URL(string: vm.trip?.photo ?? "")) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        Image("abuSimbleTemple")
                            .resizable()
                            .scaledToFill()
                    }
                }
                .frame(height: 280)
                .tabViewStyle(PageTabViewStyle())
                
                VStack {
                    HStack {
                        Text(vm.trip?.name ?? "No Name")
                            .fontWeight(.heavy)
                            .font(.system(size: 25))
                            .padding(.vertical,2)
                        Spacer()
                    }
                    
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(4.5) ? "star.fill" :
                                    (index == Int(4.5) && 4.5.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                            .foregroundColor(.yellow)
                            .font(.system(size: 14))
                        }.padding(.vertical,2)
                        
                        Text("\(4.5,specifier: "%.1f")").bold().font(.footnote)
                        Text("(25000 reviews)")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    
                    // SEGMENT VIEW
                    VStack {
                        Picker(selection: $selectedSegment, label: Text("Segment")) {
                            Text("About")
                                .tag(0)
                            Text("Reviews")
                                .tag(1)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(4)
                    }
                    
                    if selectedSegment == 0 {
                        VStack (alignment: .leading) {
                            HStack {
                                Text("About Trip").bold()
                                    .padding(.bottom, 8)
                                Spacer()
                            }
                            Text(vm.trip?.description ?? "")
                        }
                        .padding()
                    } else if selectedSegment == 1 {
                        VStack {
                            ForEach(vm.trip?.reviews ?? [Review(id: 1, review: "", reviewer_username: "", date: "")]) { review in
                                ReviewsSegmentContent(user: review.reviewer_username, desc: review.review, rating: 3.5)
                            }
                        }
                        .padding()
                    }
                    
                    Divider()
                    HStack{
                        VStack{
                            HStack{
                                Image(systemName: "clock")
                                Text("Min. Travel Time")
                            }.font(.footnote)
                                .foregroundColor(.secondary)
                            
                            Text("\(vm.trip?.duration ?? 4)")
                                .bold()
                        }
                        Spacer()
                        VStack{
                            HStack{
                                Image(systemName: "dollarsign")
                                Text("Estimated Coast")
                            }.font(.footnote)
                                .foregroundColor(.secondary)
                            
                            Text("\(vm.trip?.price ?? 0)")
                                .bold()
                        }
                    }
                }
                .padding()
            }
        }
        .onAppear {
            Task {
                try await vm.fetchTripDetails(tripID: tourId)
            }
        }
        .ignoresSafeArea()
    }
}

struct TourDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TourDetailsView(tourId: 2)
    }
}
