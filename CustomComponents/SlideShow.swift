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
    @Binding var slides: [SliderModel]
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(slides) { slide in
                ZStack (alignment: .leading) {
                    AsyncImage(url: URL(string: slide.bannar_url)) { image in
                        image
                            .resizable()
                    } placeholder: {
                        Image("abuSimbleTemple")
                            .resizable()
                    }
                    
                    VStack (alignment: .leading) {
                        Spacer()
                        Text(slide.title)
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

struct SlideShow_Previews: PreviewProvider {
    static var previews: some View {
        let slides: Binding<[SliderModel]> = .constant([
            SliderModel(id: 1, title: "Dahab", bannar_url: "https://rahal-app-efe3e7eff0b7.herokuapp.com/banners/pngwing.com.png")
        ])
        return SlideShow(slides: slides)
    }
}
