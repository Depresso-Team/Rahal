//
//  HomeView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false){
                VStack (alignment: .center){
                    // HEADER
                    HStack(spacing: 8) {
                        // TITLE
                        VStack (alignment: .leading) {
                            Text("Welcome")
                                .font(.system(.largeTitle, design: .rounded))
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
                            // LOCATION
                            Text("To Egypt")
                                .font(.system(.title3))
                                .foregroundColor(.secondary)
                                .fontWeight(.semibold)
                            
                        }.padding(.leading, 4)
                        
                        Spacer()
                        
                        // SEARCH BUTTON
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .padding(6)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(Color("CustomDarkGreenColor").opacity(0.2))
                                    .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 6)
                            )
                        // NOTIFICATION BUTTON
                        Image(systemName: "bell")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                        
                            .padding(6)
                        
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(Color("CustomDarkGreenColor").opacity(0.2))
                                    .shadow(color: Color.black.opacity(0.3), radius: 2, x: 0, y: 6)
                            )
                        
                    } //: HSTACK
                    .padding()
                    
                    // SLIDER SECTION
                    SlideShow()
                    
                    // TOP FIVE TRIPS TITLES SECTION
                    HStack () {
                        Text("Top Five Trips")
                            .bold()
                            .font(.system(size: 20))
                        Spacer()
                        Text("See All")
                            .underline()
                            .foregroundColor(.secondary)
                    }.padding()
                    
                    // TOP FIVE TRIPS CARDS SECTION
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            TourCard(imageName: "pyramids", tourName: "Giza Plateau", rating: 4.5, location: "Giza, Egypt", duration: "1 Day")
                            TourCard(imageName: "nubia", tourName: "Nubia Adventure", rating: 4.2, location: "Nubia, Sudan", duration: "2 Days")
                            TourCard(imageName: "nubia", tourName: "Nubia Adventure", rating: 4.2, location: "Nubia, Sudan", duration: "2 Days")
                        }
                        .padding()
                    }
                    
                    
                    // TOP FIVE GUIDES TITLES SECTION
                    HStack () {
                        Text("Top Five Guides")
                            .bold()
                            .font(.system(size: 20))
                        Spacer()
                        Text("See All")
                            .foregroundColor(.secondary)
                            .underline()
                    }.padding()
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 10) {
                            GuideCard(imageName: "user", guideName: "Abdelrahman", rating: 4.5, location: "Mansoura")
                            GuideCard(imageName: "user2", guideName: "Zeyad", rating: 3.5, location: "New Damietta")
                            GuideCard(imageName: "user2", guideName: "Ahmed", rating: 3.5, location: "user")
                        }.padding()
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
