//
//  TourGuideProfileView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct TourGuideProfileView: View {
    // MARK: - PROPERTIES
    let rating: Double
    @State private var selectedSegment = 0

    // MARK: - BODY
    var body: some View {
        ZStack (alignment: .top) {
            VStack{
                Spacer()
                // PROFILE
                VStack {
                    VStack (alignment: .center){
                        Image("user")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 140, height: 140)
                            .cornerRadius(70)
                            
                        Text("Abdelrahman Esmail").bold().font(.system(size: 20))
                            .padding(.top,5)
                            .padding(.bottom,10)
                            
                        HStack {
                            ForEach(0..<5) { index in
                                Image(systemName: index < Int(rating) ? "star.fill" :
                                        (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
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
                        AboutSegmentView()
                    } else if selectedSegment == 1 { // Reviews Segment
                        ReviewsSegmentContent(user: "Ali Osman", desc: "From Egypt, I’m 32 years old, license number 12345,Three years...", rating: 4.5)
                    } else if selectedSegment == 2 { // Trips Segment
                            TourCardExtended(image: "pyramids", tourName: "Giza Pyramids" ,price: 360, desc: "In the shadow of the Giza  Pyramids..." ,rating: 4.5,location:"Giza Plateau", duration: 1)
                    }
                }
            }


        }
    }
}

struct TourGuideProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TourGuideProfileView(rating: 4.5)
    }
}

let profileData: [(title: String, value: String)] = [("Name", "Ali Kamal"), ("Age","32 Years"), ("Location","Mansoura, Dakahlia, Egypt"),("license","12345"),("Rating","92% Good 8% Bad"),("Languages","English, French and Spanish"),("Identity","A tour guide in Egypt is a licensed  expert who offers insights into the country's history, culture.")]


struct AboutSegmentView: View {
    var body: some View {
        VStack(alignment: .leading) {
                    ForEach(profileData.indices, id: \.self) { index in
                        HStack {
                            Text(profileData[index].title)
                                .font(.headline)
                                .frame(width: 100, alignment: .leading)
                            HStack {
                              Divider()
                            }
                            Spacer()
                            Text(profileData[index].value)
                                .font(.body)
                        }.padding(.vertical,6)
                        Divider()
                    }
                }
                .padding()
    }
}
