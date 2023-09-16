//
//  GuideCard.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct GuideCard: View {
    // MARK: - PROPERTIES
    let image: String
    let guideName: String
    let rating: Double
    let location: String
    
    // MARK: - BODY
    var body: some View {
            ZStack {
                VStack(alignment: .center) {
                    AsyncImage(url: URL(string: image)) { image in
                              image
                                  .resizable()
                          } placeholder: {
                              Image("user")
                                  .resizable()
                          }
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 85, height: 85)
                          .cornerRadius(45)
                    
//                    AsyncImage(url: URL(string: "https://rahal-app-efe3e7eff0b7.herokuapp.com/media/guides/user.png")) { image in
//                        image
//                            .rs
//                    }
                    
                    Text(guideName)
                    Text(location)
                        .foregroundColor(.secondary)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(rating) ? "star.fill" :
                                    (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }.padding(.vertical,2)
                    }
                }
                .frame(width: 132 ,height: 182)
                .padding(14)
                .background(.white)
                .cornerRadius(30)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 2, y: 2)
                
                    Image(systemName: "bookmark")
                        .foregroundColor(Color("CustomDarkGreenColor"))
                        .font(.system(size: 24))
                        .fontWeight(.light)
                        .offset(x: 60, y: -92)
                
                    Spacer()
            }
        }
    
    
    struct GuideCard_Previews: PreviewProvider {
        static var previews: some View {
            GuideCard(image: "user", guideName: "Abdelrahman", rating: 4.5, location: "Mansoura")
        }
    }
}
