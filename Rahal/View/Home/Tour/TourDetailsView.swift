//
//  TourDetailsView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 14/09/2023.
//

import SwiftUI

struct TourDetailsView: View {
    // MARK: - PROPERTIES
    let rating: Double
    @State private var currentIndex = 0
    let tourImages: [String] = ["abuSimbleTemple","sphinx"]

    
    var body: some View {
        VStack{
            
            TabView {
                    ForEach(tourImages, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                    }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.45)
            .tabViewStyle(PageTabViewStyle())
            
            

            VStack(alignment: .leading) {
                Text("Giza Pyramids")
                    .fontWeight(.heavy)
                    .font(.system(size: 25))
                    .padding(.vertical,2)
                
                HStack {
                    ForEach(0..<5) { index in
                        Image(systemName: index < Int(rating) ? "star.fill" :
                                (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                            .foregroundColor(.yellow)
                            .font(.system(size: 14))
                    }.padding(.vertical,2)
                    
                    Text("\(rating,specifier: "%.1f")").bold().font(.footnote)
                    Text("(25000 reviews)")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    
                    
                Spacer()
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct TourDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TourDetailsView(rating: 4.5)
    }
}
