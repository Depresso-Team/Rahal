//
//  ReviewsSegmentContent.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct ReviewsSegmentContent: View {
    let imageName: String
    let guideName: String
    let rating: Double
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                VStack (alignment: .leading){
                    Text(guideName).bold()
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(rating) ? "star.fill" :
                                    (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }
                    }
                    Text("From Egypt, I’m 32 years old, license number 12345,Three years...")
                        .foregroundColor(.secondary)
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
            }
            Divider()
            HStack {
                VStack (alignment: .leading){
                    Text(guideName).bold()
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(rating) ? "star.fill" :
                                    (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }
                    }
                    Text("From Egypt, I’m 32 years old, license number 12345,Three years...")
                        .foregroundColor(.secondary)
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
            }
            Divider()
            HStack {
                VStack (alignment: .leading){
                    Text(guideName).bold()
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(rating) ? "star.fill" :
                                    (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }
                    }
                    Text("From Egypt, I’m 32 years old, license number 12345,Three years...")
                        .foregroundColor(.secondary)
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
            }
        }

        
    }
}

struct ReviewsSegmentContent_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsSegmentContent(imageName: "user", guideName: "Abdelrahman", rating: 4.5)
    }
}
