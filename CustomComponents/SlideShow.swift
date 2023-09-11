//
//  SlideShow.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 11/09/2023.
//

import SwiftUI

struct SlideShow: View {
    // MARK: - PROPERTIES
    @State private var currentIndex = 0
    let coverImages: [String] = ["alAzharMosque","abuSimbleTemple","sphinx"]
    let coverText: [String] = ["Al Azhar Mosque","Abu Simble Temple","Sphinx"]
    
    // MARK: - BODY
    var body: some View {

        TabView {
                ForEach(coverImages, id: \.self) { imageName in
                    ZStack (alignment: .leading) {
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                        VStack (alignment: .leading) {
                            Spacer()
                            Text("Al Azhar Mosque")
                                .font(.system(size: 24))
                                .fontWeight(.heavy)
                            .foregroundColor(.white)
                            
                        }.padding(34)
                    }

                }
        }
        .cornerRadius(10)
        .frame(width: UIScreen.main.bounds.width - 30, height: 226)
        .tabViewStyle(PageTabViewStyle())
        
        
      }

    }

struct SlideShowV2_Previews: PreviewProvider {
    static var previews: some View {
        SlideShow()
    }
}
