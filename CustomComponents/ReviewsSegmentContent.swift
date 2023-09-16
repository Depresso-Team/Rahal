//
//  ReviewsSegmentContent.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 16/09/2023.
//

import SwiftUI

struct ReviewsSegmentContent: View {
    // MARK: - PROPERTIES
    let user: String
    let desc: String
    let rating: Double
    
    // MARK: - BODY
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                VStack (alignment: .leading){
                    Text(user).bold()
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(rating) ? "star.fill" :
                                    (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }
                    }
                    Text(desc)
                        .foregroundColor(.secondary)
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
            }
            Divider()
            HStack {
                VStack (alignment: .leading){
                    Text(user).bold()
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(rating) ? "star.fill" :
                                    (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }
                    }
                    Text(desc)
                        .foregroundColor(.secondary)
                        .font(.footnote)
                        .fontWeight(.semibold)

                }
            }
            Divider()
            HStack {
                VStack (alignment: .leading){
                    Text(user).bold()
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(rating) ? "star.fill" :
                                    (index == Int(rating) && rating.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }
                    }
                    Text(desc)
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
        ReviewsSegmentContent(user: "Abdelrahman", desc: "From Egypt, I’m 32 years old, license number 12345,Three years...", rating: 4.5)
    }
}
