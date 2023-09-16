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
    let price: Double
    let minTime: Int
    @State private var currentIndex = 0
    let tourImages: [String] = ["abuSimbleTemple","sphinx"]
    @State private var  selectedSide: Sides = .about

    // MARK: - BODY
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                
                TabView {
                        ForEach(tourImages, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                        }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.45)
                .tabViewStyle(PageTabViewStyle())
                
                

                VStack{
                    HStack {
                        Text("Giza Pyramids")
                            .fontWeight(.heavy)
                            .font(.system(size: 25))
                            .padding(.vertical,2)
                        Spacer()
                    }
                    
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
                    
                    // SEGMENT VIEW
                        VStack{
                            Picker("About", selection: $selectedSide){
                                ForEach(Sides.allCases, id: \.self){
                                    Text($0.rawValue)
                                }
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .padding(4)
                            ContentOfSegment(selectedSide: selectedSide)
                        }
                    
                    Divider()
                    HStack{
                        VStack{
                            HStack{
                                Image(systemName: "clock")
                                Text("Min. Travel Time")
                            }.font(.footnote)
                            .foregroundColor(.secondary)
                            
                            Text("\(minTime) Hours")
                                .bold()
                        }
                        Spacer()
                        VStack{
                            HStack{
                                Image(systemName: "dollarsign")
                                Text("Estimated Coast")
                            }.font(.footnote)
                            .foregroundColor(.secondary)
                            
                            Text("$ \(price,specifier: "%.1f")")
                                .bold()
                        }
   
                    }
                    // BOOK BUTTON
                    Button{
                        
                        }
                        
                    label: {
                        Text("Book Now").fontWeight(.bold).foregroundColor(.white)
                            .font(.system(size: 18))
                            .frame(width: UIScreen.main.bounds.width - 120,height: 42).font(.system(size: 24))
                        
                        
                    }.background(Color("CustomDarkGreenColor")).cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
                }
                .padding()
            }
        }
        
    }
    
}

struct TourDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TourDetailsView(rating: 4.5, price: 350, minTime: 6)
    }
}


enum Sides : String, CaseIterable{
    case about = "About"
    case reviews = "Reviews"
}

struct ContentOfSegment: View {
    
    var selectedSide : Sides
    
    var body: some View {
        switch selectedSide {
        case .about: AboutSegmentContent(imageName: "user", guideName: "Abdelrahman", rating: 4.5)
        case .reviews: Text("Textttt")
        }
    }
}
