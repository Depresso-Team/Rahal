//
//  GuideCard.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct GuideCard: View {
    // MARK: - PROPERTIES
    let imageName: String
    let guideName: String
    let rating: Double
    let location: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90)
                    .cornerRadius(45)
                    .buttonStyle(PlainButtonStyle())
                Text(guideName).bold().padding(2)
                Text(location)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                HStack {
                    ForEach(0..<5) { index in
                        Image(systemName: index < Int(rating) ? "star.fill" :
                                (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                            .foregroundColor(.yellow)
                            .font(.system(size: 20))
                    }.padding(.vertical,4)
                }
                
            }
            .frame(width: 156 ,height: 196)
            .padding(16)
            .background(.white)
            .cornerRadius(30)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 2, y: 2)
        }
    }
    
    
    struct GuideCard_Previews: PreviewProvider {
        static var previews: some View {
            GuideCard(imageName: "user", guideName: "Abdelrahman", rating: 4.5, location: "Mansoura")
        }
    }
}
