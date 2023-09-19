//
//  TourGuideProfileView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct TourGuideProfileView: View {
    // MARK: - PROPERTIES
    @StateObject private var vm = TourGuideDetailsViewModel.shared
    @State private var selectedSegment = 0
    var guideId: Int
    
    // MARK: - BODY
    var body: some View {
        ZStack (alignment: .top) {
            VStack{
                Spacer()
                // PROFILE
                VStack {
                    VStack (alignment: .center) {
                        AsyncImage(url: URL(string: vm.guide?.personal_photo ?? "")) { image in
                            image
                                .resizable()
                        } placeholder: {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                        }
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 164, height: 164)
                        .clipShape(Circle())
                        
                        Text(vm.guide?.username ?? "").bold().font(.system(size: 20))
                            .padding(.top,5)
                            .padding(.bottom,10)
                        
                        HStack {
                            
                            ForEach(0..<5) { index in
                                if let rate = vm.guide?.rate {
                                    Image(systemName: index < Int(rate) ? "star.fill" :
                                            (index == Int(rate) && rate.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                    .foregroundColor(.yellow)
                                    .font(.system(size: 14))
                                }
                            }
                            .padding(.bottom,2)
                        }
                        .padding(.bottom,10)
                    }
                    
                    Picker(selection: $selectedSegment, label: Text("Segment")) {
                        Text("About").tag(0)
                        Text("Reviews").tag(1)
                        Text("Trips").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if selectedSegment == 0 {
                        AboutSegmentView(guide: vm.guide ?? GuideDetailsModel(id: 1, username: "", personal_photo: "", age: 1, license: 1, address: "", rate: 4.5, review: [Review(id: 1, review: "", reviewer_username: "", date: "")], tour_list: [GuideToursModel(id: 1, photo: "", name: "", price: 1, state_id: "", location: "", duration: 1)]))
                    } else if selectedSegment == 1 {
                        ForEach(vm.guide?.review ?? [Review(id: 1, review: "", reviewer_username: "", date: "")]) { review in
                            ReviewsSegmentContent(user: review.reviewer_username, desc: review.review, rating: 3.5)
                                .padding()
                        }
                    } else if selectedSegment == 2 {
                        ForEach(vm.guide?.tour_list ?? [GuideToursModel(id: 1, photo: "", name: "Giza Pyramids", price: 360, state_id: "1", location: "", duration: 1)]) { tour in
                            TourCardExtended(image: tour.photo,
                                             tourName: tour.name,
                                             price: tour.price,
                                             desc: "In the shadow of the Giza  Pyramids...",
                                             rating: 4.5,
                                             location: tour.location,
                                             duration: tour.duration)
                        }
                    }
                    Spacer()
                }
            }
            .onAppear {
                Task {
                    try await vm.fetchTourGuideDetails(userID: guideId)
                }
            }
        }
    }
}

struct TourGuideProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TourGuideProfileView(guideId: 0)
    }
}


struct AboutSegmentView: View {
    var guide: GuideDetailsModel
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(Array(dataaa()), id: \.key) { key, value in
                HStack {
                    Text(key)
                        .font(.headline)
                        .frame(width: 100, alignment: .leading)
                    HStack {
                        Divider()
                    }
                    Spacer()
                    if let stringValue = value as? String {
                        Text(stringValue)
                            .font(.body)
                            .minimumScaleFactor(0.5)
                    } else {
                        Text("Invalid Value")
                            .font(.body)
                            .foregroundColor(.red)
                            .minimumScaleFactor(0.5)
                    }
                }
                .padding(.vertical, 6)
                Divider()
            }
        }
        .padding()
    }
    
    func dataaa() -> [String: Any] {
        let data =  [
            "Name": guide.username,
            "Age": "\(guide.age) Years",
            "Location": guide.address,
            "License": "\(guide.license)",
            "Rating": "\(guide.rate)",
            "Identity": "A tour guide in Egypt is a licensed  expert who offers insights into the country's history, culture."
            
        ] as [String : Any]
        return data
    }
}
