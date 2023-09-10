//
//  GuideView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 10/09/2023.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                SearchBar()
                
                HStack {
                    Text("Tour Guides")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    Spacer()
                }
                
                
                VStack (spacing: 20) {
                    HStack  (spacing: 14) {
                        GuideCard(imageName: "user", guideName: "Abdelrahman", rating: 4.5, location: "Mansoura")
                        GuideCard(imageName: "user2", guideName: "Zeyad", rating: 3.5, location: "New Damietta")
                    }
                    HStack (spacing: 14) {
                        GuideCard(imageName: "user2", guideName: "Zeyad", rating: 3.5, location: "New Damietta")
                        GuideCard(imageName: "user", guideName: "Abdelrahman", rating: 4.5, location: "Mansoura")

                    }
                }
            }
        }

    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
