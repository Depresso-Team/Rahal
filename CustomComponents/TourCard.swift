//
//  TripCard.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 09/09/2023.
//

import SwiftUI

struct TourCard: View {
    // MARK: - PROPERTIES
    let imageName: String
    let tourName: String
    let rating: Double
    let location: String
    let duration: String
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 222, height: 142)
                    .cornerRadius(16)
                    .buttonStyle(PlainButtonStyle())

                VStack {
                    HStack {
                        Text(tourName).bold()
                        Spacer()
                        Image(systemName: "star.fill")
                            .padding(.leading)
                            .foregroundColor(.yellow)
                        Text("\(rating,specifier: "%.1f")").foregroundColor(.secondary).bold().font(.footnote)
                    }

                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color("CustomDarkGreenColor"))
                            .opacity(0.7)
                        Text(location).bold().foregroundColor(.secondary).padding(4)
                        Spacer()
                        Text(duration).foregroundColor(.secondary).bold()
                            .font(.footnote)
                            .padding(4)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("CustomDarkGreenColor").opacity(0.7), lineWidth: 2)
                            )
                    }

                    Button(action: {}) {
                        Text("View More")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 168, height: 38)
                            .font(.system(size: 16))
                            .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                    }
                    .background(Color("CustomDarkGreenColor").opacity(0.7))
                    .cornerRadius(10)
                    .padding(.top, 6)
                }
            }
            .frame(width: 204 ,height: 248)
            .padding(16)
            .background(.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 2, y: 2)
        }
    }
    }


struct TripCard_Previews: PreviewProvider {
    static var previews: some View {
        TourCard(imageName: "pyramids", tourName: "Giza Plateau", rating: 4.5, location: "Giza Plateau", duration: "1 Day")


    }
}
