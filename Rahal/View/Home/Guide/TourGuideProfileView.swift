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
                VStack {
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
                        Text("Reviews content goes here")
                    } else if selectedSegment == 2 { // Trips Segment
                        Text("Trips content goes here")
                    }
                }
            }

            // PROFILE IMAGE
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
            .offset(x:0,y: 110)
            
            
            
            
            
        }
    }
}

struct TourGuideProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TourGuideProfileView(rating: 4.5)
    }
}

struct AboutSegmentView: View {
    var body: some View {
        Text("About")
    }
}
