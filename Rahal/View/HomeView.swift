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
                    
                    // SEARCH BAR
                    SearchBar()
                    
                    // SLIDER SECTION
                    SlideShow()
                    
                    // TOP FIVE TRIPS TITLES SECTION
                    HStack () {
                        Text("Top Five Trips").bold().font(.system(size: 20))
                        Spacer()
                        Text("See All").foregroundColor(.secondary)
                    }.padding()
                    
                    // TOP FIVE TRIPS CARDS SECTION
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 20) {
                            TourCard(imageName: "pyramids", tourName: "Giza Plateau", rating: 4.5, location: "Giza, Egypt", duration: "1 Day")
                            
                            TourCard(imageName: "nubia", tourName: "Nubia Adventure", rating: 4.2, location: "Nubia, Sudan", duration: "2 Days")
                        }.padding()
                        }
                    
                    
                    // TOP FIVE GUIDES TITLES SECTION
                    HStack () {
                        Text("Top Five Guides").bold().font(.system(size: 20))
                        Spacer()
                        Text("See All").foregroundColor(.secondary)
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
