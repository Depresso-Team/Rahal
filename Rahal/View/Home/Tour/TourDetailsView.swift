//
//  TourDetailsView.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 14/09/2023.
//

import SwiftUI

struct TourDetailsView: View {
    // MARK: - PROPERTIES
    @State private var selectedSegment = 0
    let tourImages: [String] = ["abuSimbleTemple", "sphinx"]

    // MARK: - BODY
    var body: some View {
        VStack {
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    
                    TabView {
                        ForEach(tourImages, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    .frame(height: 280)
                    .tabViewStyle(PageTabViewStyle())
                    
                    VStack {
                        HStack {
                            Text("Giza Pyramids")
                                .fontWeight(.heavy)
                                .font(.system(size: 25))
                                .padding(.vertical,2)
                            Spacer()
                        }
                        
                        HStack {
                            ForEach(0..<5) { index in
                                Image(systemName: index < Int(4.5) ? "star.fill" :
                                        (index == Int(4.5) && 4.5.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                            }.padding(.vertical,2)
                            
                            Text("\(4.5,specifier: "%.1f")").bold().font(.footnote)
                            Text("(25000 reviews)")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                            Spacer()
                        }
                        
                        // SEGMENT VIEW
                        VStack {
                            Picker(selection: $selectedSegment, label: Text("Segment")) {
                                Text("About")
                                    .tag(0)
                                Text("Reviews")
                                    .tag(1)
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .padding(4)
                        }
                        
                        if selectedSegment == 0 {
                            VStack (alignment: .leading) {
                                Text("About Trip").bold()
                                Text("Visitors to the Giza Pyramids can expect to marvel at the sheer size and precision of\nthese ancient monuments, which were constructed as tombs for pharaohs and served as symbols of their power and divinity.")
                                
                                HStack {
                                    Image("user")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 45, height: 45)
                                        .padding(.horizontal,6)
                                        .clipShape(Circle())
                                    
                                    VStack (alignment: .leading){
                                        Text("Abdo").bold()
                                        HStack {
                                            ForEach(0..<5) { index in
                                                Image(systemName: index < Int(4.5) ? "star.fill" :
                                                        (index == Int(4.5) && 4.5.truncatingRemainder(dividingBy: 1) == 0.5 ? "star.lefthalf.fill" : "star"))
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
                            .padding()
                        } else if selectedSegment == 1{
                            VStack {
                                Image(systemName: "eye.slash.fill")
                                Text("Now reviews to show")
                            }
                            .padding()
                        }
                        
                        Divider()
                        HStack{
                            VStack{
                                HStack{
                                    Image(systemName: "clock")
                                    Text("Min. Travel Time")
                                }.font(.footnote)
                                    .foregroundColor(.secondary)

                                Text("5 Hours")
                                    .bold()
                            }
                            Spacer()
                            VStack{
                                HStack{
                                    Image(systemName: "dollarsign")
                                    Text("Estimated Coast")
                                }.font(.footnote)
                                    .foregroundColor(.secondary)

                                Text("$ 350")
                                    .bold()
                            }
                        }
                    }
                    .padding()
                }
            }
            .ignoresSafeArea()
//             BOOK BUTTON
            Button{

                }
            label: {
                Text("Book Now").fontWeight(.bold).foregroundColor(.white)
                    .font(.system(size: 18))
                    .frame(width: UIScreen.main.bounds.width - 120,height: 42).font(.system(size: 24))


            }
            .background(Color("CustomDarkGreenColor")).cornerRadius(10)
            .shadow(color: Color.black.opacity(0.08), radius: 4, x: 0, y: 2)
        }
    }
    
}

struct TourDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TourDetailsView()
    }
}


enum Sides : String, CaseIterable{
    case about = "About"
    case reviews = "Reviews"
}

struct ContentOfSegment: View {
    
    @Binding var selectedSide : Sides
    
    var body: some View {
        Text("")
//        switch selectedSide {
//        case .about:
//        case .reviews:
//        }
    }
}
