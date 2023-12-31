//
//  TourCardExtended.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 12/09/2023.
//

import SwiftUI

struct TourCardExtended: View {
    // MARK: - PROPERTIES
    let image: String
    let tourName: String
    let price: Int
    let desc: String
    let rating: Double
    let location: String
    let duration: Int
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 12) {
                AsyncImage(url: URL(string: image)){ image in
                    image.resizable()
                }placeholder: {
                    Image("Tourplaceholder")
                        .resizable()
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: 142, height: 116)
                .cornerRadius(16)
          
                    
                    .aspectRatio(contentMode: .fit)
                    
                    
                
                VStack (alignment: .leading) {
                    HStack{
                        Text(tourName).bold().font(.system(size: 20))
                            .padding(.vertical,2)
                        Spacer()
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(Color("CustomDarkGreenColor"))
                            .font(.system(size: 22))
                    }
                    
                    Text(desc)
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow.opacity(0.6))
                        
                        Text("\(rating,specifier: "%.1f")")
                            .foregroundColor(.secondary)
                            .bold()
                    }
                    .font(.footnote)
                    .padding(.vertical,1)
                    HStack{
                        Text("\(price) USD").bold()
                        Text("/ \(duration) Day").bold()
                            .foregroundColor(.secondary)
                            .font(.footnote)
                        
                    }
                    
                    
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color("CustomDarkGreenColor"))
                            .opacity(0.7)
                        Text(location).bold().foregroundColor(.secondary).padding(.top,1)
                    }.font(.footnote)
                    
                }
            }
            .frame(width: UIScreen.main.bounds.width - 54,height: 126)
            .padding(16)
            .background(.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 2, y: 2)
        }
    }
    }


struct TourCardExtended_Previews: PreviewProvider {
    static var previews: some View {
        TourCardExtended(image: "pyramids", tourName: "Giza Pyramids" ,price: 360, desc: "In the shadow of the Giza  Pyramids..." ,rating: 4.5,location:"Giza Plateau", duration: 1)


    }
}

