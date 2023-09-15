//
//  AboutSegmentContent.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 15/09/2023.
//

import SwiftUI



struct AboutSegmentContent: View {
    let imageName: String
    let guideName: String
    let rating: Double
    
    var body: some View {

        
        VStack (alignment: .leading) {
            Text("About Trip").bold()
            Text("Visitors to the Giza Pyramids can expect to marvel at the sheer size and precision of\nthese ancient monuments, which were constructed as tombs for pharaohs and served as symbols of their power and divinity.")
            
            HStack {
                Image(imageName)
                     .aspectRatio(contentMode: .fill)
                     .frame(width: 45, height: 45)
                     .cornerRadius(45)
                     .buttonStyle(PlainButtonStyle())
                     .padding(.horizontal,6)
                
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

struct AboutSegmentContent_Previews: PreviewProvider {
    static var previews: some View {
        AboutSegmentContent(imageName: "user", guideName: "Abdelrahman", rating: 4.5)
    }
}
