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
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        
                        Text(vm.guide?.username ?? "").bold().font(.system(size: 20))
                            .padding(.top,5)
                            .padding(.bottom,10)
                        
                        HStack {
                            ForEach(0..<5) { index in
                                Image(systemName: index < Int(5) ? "star.fill" :
                                        (index == Int(5) && 5.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 18))
                            }.padding(.bottom,2)
                        }.padding(.bottom,10)
                    }
                    
                    Picker(selection: $selectedSegment, label: Text("Segment")) {
                        Text("About").tag(0)
                        Text("Reviews").tag(1)
                        Text("Trips").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    if selectedSegment == 0 { // About Segment
                        AboutSegmentView(guide: vm.guide ?? GuideDetailsModel(id: 1, username: "", personal_photo: "", age: 1, license: 1, address: "", rate: "", review: [Review(review: "")], tour_list: [GuideToursModel(id: 1, name: "", price: 1, state_id: "", location: "", duration: 1)]))
                    } else if selectedSegment == 1 { // Reviews Segment
                        ReviewsSegmentContent(user: "Ali Osman", desc: "From Egypt, I’m 32 years old, license number 12345,Three years...", rating: 4.5)
                    } else if selectedSegment == 2 { // Trips Segment
                        TourCardExtended(image: "pyramids", tourName: "Giza Pyramids" ,price: 360, desc: "In the shadow of the Giza  Pyramids..." ,rating: 4.5,location:"Giza Plateau", duration: 1)
                    }
                    Spacer()
                }
            }
        }
    }
}


struct TourGuideProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TourGuideProfileView()
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
